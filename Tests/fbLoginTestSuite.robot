*** Settings ***
Documentation   Testing FaceBook login page
Library     DataDriver  ../Resources/TestData/fbTestData.xlsx   sheet_name=users
Resource    ../Resources/Web/CommonWeb.robot
Resource    ../Resources/Keywords/LoginPageKeywords.robot
Resource    ../Resources/Keywords/ForgotPasswordPageKeywords.robot
Test Template   Testing Template
Suite Setup     CommonWeb.Suite Setup

*** Variables ***
${LOGIN_PAGE_URL} =     https://en-gb.facebook.com/

*** Keywords ***
Testing Template
    [Arguments]     ${ID}   ${EMAIL}    ${PASSWORD}
    Set Global Variable  ${ID}   ${ID}
    Set Global Variable  ${EMAIL}       ${EMAIL}
    Set Global Variable  ${PASSWORD}       ${PASSWORD}

    GO TO    ${LOGIN_PAGE_URL}

    Run Keyword If  '${ID}' == '1'      TC01
    Run Keyword If  '${ID}' == '2'      TC02
    Run Keyword If  '${ID}' == '3'      TC03
    Run Keyword If  '${ID}' == '4'      TC04

TC01
    [Documentation]    User checks login page and logs in with correct email and password
    LoginPageKeywords.Check login page display
    LoginPageKeywords.Login with valid credentials  ${EMAIL}    ${PASSWORD}

TC02
    [Documentation]    User logs in with correct email and incorrect password
    LoginPageKeywords.Login with invalid credentials  ${EMAIL}    ${PASSWORD}

TC03
    [Documentation]    User checks forgot password navigation
    LoginPageKeywords.Click on forgot password
    ForgotPasswordPageKeywords.Check forgot password page display

TC04
    [Documentation]    User checks create account navigation
    LoginPageKeywords.Click on create account
    LoginPageKeywords.Check registration overlay display

*** Test Cases ***
Test Suite
    [Setup]     CommonWeb.Begin Web Test
    Testing Template
    ...     ${ID}   ${EMAIL}    ${PASSWORD}
    [Teardown]    CommonWeb.End All Tests