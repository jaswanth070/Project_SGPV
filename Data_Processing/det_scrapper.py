from selenium import webdriver  
import pandas as pd
import time  
from selenium.webdriver.common.keys import Keys  
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from bs4 import BeautifulSoup as bs


pins =  [13,15,38,51]
lst = {}

data = {"Pin_No": [],
        "Name":[],
}

chrome_options = Options() 
chrome_options.add_experimental_option("detach", True)

driver = webdriver.Chrome(options=chrome_options)
driver.get("https://sbtetuat.ap.gov.in/APSBTET/results.do")  
for pin in pins:
    try:
        # if pin in [6,12,13,15,18,20,21,26,31,36,38,39,43,44,47,51,60,66]:
        #     pin = pin + 1
        #     continue
        
        lst.clear()
        driver.find_element('name',"aadhar1").send_keys((Keys.CONTROL, "a"))  
        driver.find_element('name',"aadhar1").send_keys(str(f"21596-M-{pin:03d}")) 

        s1 = Select(driver.find_element('name','grade2'))
        s1.select_by_value('1YR')

        # time.sleep(1) 
        # driver.find_element(By.CLASS_NAME,"btn btn-primary")
        btn = driver.find_elements(By.CLASS_NAME,"btn-primary")
        btn[0].send_keys(Keys.ENTER)
        html = driver.page_source
        soup = bs(html,'html5lib')
        tags = soup.findAll('td')

        if(len(tags) == 0):
            pin += 1
            continue

        # time.sleep(1)
        # name_std = soup.findAll('font',attrs={'color':'blue'})
        # # result = soup.findAll('td')
        # table_c = soup.findAll('td')
        lst['pin'] = str(tags[0].text)
        lst['name'] = str(tags[2].text)
        # print(lst)
        
        data['Pin_No'].append(lst['pin'])
        data['Name'].append(lst['name'])

        # print(data)
        # time.sleep(0.8)
        btn = driver.find_elements(By.CLASS_NAME,"btn-primary")
        btn[0].send_keys(Keys.ENTER)

        pin = pin + 1 

    except:
        df = pd.DataFrame.from_dict(data)
        df.to_csv(r'gana_std_data.csv',index=False,header=True)
        exit()

driver.close()  
# print(data)
df = pd.DataFrame.from_dict(data)
df.to_csv(r'gana_std_data.csv',index=False,header=True)
