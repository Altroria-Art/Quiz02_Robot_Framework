*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser        https://chiangmuan.igovapp.com           chrome
Suite Teardown      Close Browser    

*** Variables ***

${ID}               1639800361815
${Type of Test}     ตรวจเลือดทั้งหมด

*** Keywords ***

Submit the request
    SeleniumLibrary.Click Element 	 //*[@id="root"]/div/main/section[2]/div/a[1]/div 	 modifier=False 	 action_chain=False
    SeleniumLibrary.Click Element 	 //*[@id="root"]/div/main/section[2]/div/div[2]/div[2]/a 	 modifier=False 	 action_chain=False


*** Test Cases ***

TestCase01
    Submit the request