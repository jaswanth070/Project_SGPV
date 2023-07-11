DELIMITER $$
create TRIGGER insert_backlog_trigger
AFTER INSERT ON Results
FOR EACH ROW
BEGIN
  IF NEW.Mode = 'REG' AND NEW.Remarks = 'Fail' THEN
    INSERT INTO Backlogs (PIN, sub_id, sem, Marks,Period,MODE, Status)
    VALUES (NEW.PIN, NEW.sub_id, NEW.sem, NEW.Marks,NEW.Period,NEW.MODE, 'Active');
  ELSEIF NEW.Mode = 'SUP' THEN
    UPDATE Backlogs
    SET Status = 'Inactive'
    WHERE PIN = NEW.PIN AND sub_id = NEW.sub_id AND NEW.Remarks = 'Pass';
  END IF;
END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER update_active_backlogs_trigger
AFTER INSERT ON Backlogs
FOR EACH ROW
BEGIN
  UPDATE Students
  SET active_backlogs = (
    SELECT COUNT(*) FROM Backlogs
    WHERE PIN = NEW.PIN AND Status = 'Active'
  )
  WHERE PIN = NEW.PIN;
END$$
DELIMITER ;