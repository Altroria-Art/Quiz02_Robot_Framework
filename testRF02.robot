*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser        https://chiangmuan.igovapp.com           chrome
Suite Teardown      Close Browser    

*** Variables ***

${Username}     gamesaaa001@gmail.com
${Password}     0898563044za

*** Keywords ***

Login Line
    

*** Test Cases ***

TestCase01
    Submit the request