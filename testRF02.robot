*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser        https://chiangmuan.igovapp.com        chrome
Suite Teardown      Close Browser    

*** Variables ***
${Username}         gamesaaa001@gmail.com
${Password}         0898563044za
${TexttestBlood}    สุขภาพดี

*** Keywords ***
Login Line
    SeleniumLibrary.Wait Until Element Is Visible    //*[@id="root"]/div/nav/header/div/a[1]    timeout=20
    SeleniumLibrary.Click Element    //*[@id="root"]/div/nav/header/div/a[1]
    SeleniumLibrary.Wait Until Element Is Visible    //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]/input    timeout=20
    SeleniumLibrary.Input Text      //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]/input    ${Username}
    SeleniumLibrary.Input Text      //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[2]/input    ${Password}
    SeleniumLibrary.Click Element    //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[3]/button
    SeleniumLibrary.Wait Until Element Is Visible    //*[@id="root"]/div/main/section[2]/div/a[3]/div    timeout=120

Comment Blood test record
    SeleniumLibrary.Wait Until Element Is Visible    //*[@id="root"]/div/main/section[2]/div/a[1]/div    timeout=20
    SeleniumLibrary.Click Element    //*[@id="root"]/div/main/section[2]/div/a[1]/div
    SeleniumLibrary.Wait Until Element Is Visible    //*[@id="root"]/div/main/section[2]/div/div[2]/div[3]/a    timeout=20
    SeleniumLibrary.Click Element    //*[@id="root"]/div/main/section[2]/div/div[2]/div[3]/a
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//a[contains(@href, '1639800361815-00188')]    timeout=20
    SeleniumLibrary.Click Element    xpath=//a[contains(@href, '1639800361815-00188')]
    SeleniumLibrary.Switch Window    NEW    timeout=15s
    SeleniumLibrary.Wait Until Element Is Visible 	 //*[@id="page-Physical Examination Request"]/div[2]/div[2]/div/div[3]/div[1]/div[3]/div/div/div[1]/div/div[2]/div/div/div[1]/p 	 timeout=20 	 error=None
    SeleniumLibrary.Input Text 	 //*[@id="page-Physical Examination Request"]/div[2]/div[2]/div/div[3]/div[1]/div[3]/div/div/div[1]/div/div[2]/div/div/div[1]/p 	 ${TexttestBlood}
    SeleniumLibrary.Wait Until Element Is Visible 	 //*[@id="page-Physical Examination Request"]/div[2]/div[2]/div/div[3]/div[1]/div[3]/div/div/div[1]/div/button 	 timeout=20 	 error=None
    SeleniumLibrary.Click Element 	 //*[@id="page-Physical Examination Request"]/div[2]/div[2]/div/div[3]/div[1]/div[3]/div/div/div[1]/div/button 	 modifier=False 	 action_chain=False
    
*** Test Cases ***
TestCase01
    Login Line
    Comment Blood test record
    Sleep    5s
    SeleniumLibrary.Capture Page Screenshot