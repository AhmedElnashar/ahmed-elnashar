*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SELENIUM_SPEED} =  0.6s

*** Keywords ***
Suite Setup
    Set Selenium Speed    ${SELENIUM_SPEED}
    set global variable   ${TIMEOUT}  50s
    Set Selenium Timeout  20s
    Set Browser Options

Set Browser Options
    Run Keyword If  '${BROWSER}' == 'Firefox'       Set Options     Firefox
    Run Keyword If  '${BROWSER}' == 'Chrome'        Set Options     Chrome
    Run Keyword If  '${BROWSER}' == 'IE'            Set Options     IE

Set Options
    [Arguments]  ${Browser}
    Log To Console      -->Set Browser Options
    ${browser_options} =  Evaluate    sys.modules['selenium.webdriver'].${Browser}Options()    sys, selenium.webdriver
    Create Webdriver    ${Browser}    browser_options=${browser_options}

Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser

End All Tests
    Close All Browsers

