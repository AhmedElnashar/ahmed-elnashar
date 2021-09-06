*** Settings ***
Library    SeleniumLibrary
Resource    ../CL/LoginPageCL.robot
Resource    ../CL/WrongPasswordPageCL.robot
Resource    ../CL/ForgotPasswordPageCL.robot
Resource    ../ObjectRepository/LoginPageLocators.robot
Resource    ../ObjectRepository/HomePageLocators.robot

*** Variables ***

*** Keywords ***
Check login page display
    WAIT UNTIL ELEMENT IS VISIBLE      ${USERNAME_FIELD_LOCATOR}
    ELEMENT SHOULD BE VISIBLE    ${USERNAME_FIELD_LOCATOR}
    ELEMENT SHOULD BE VISIBLE    ${LOGIN_BTN_LOCATOR}
    ELEMENT ATTRIBUTE VALUE SHOULD BE    ${USERNAME_FIELD_LOCATOR}      placeholder  ${USERNAME_FIELD_PLACEHOLDER}
    ELEMENT ATTRIBUTE VALUE SHOULD BE    ${PASSWORD_FIELD_LOCATOR}      placeholder  ${PASSWORD_FIELD_PLACEHOLDER}
    ELEMENT TEXT SHOULD BE    ${LOGIN_BTN_TEXT_LOCATOR}     ${LOGIN_BTN_TEXT}
    ELEMENT SHOULD BE VISIBLE    ${FORGOT_PASSWORD_LOCATOR}
    ELEMENT TEXT SHOULD BE    ${FORGOT_PASSWORD_LOCATOR}    ${FORGOT_PASSWORD_TEXT}
    ELEMENT SHOULD BE VISIBLE    ${CREATE_PAGE_LINK_LOCATOR}
    ELEMENT SHOULD BE VISIBLE    ${CREATE_PAGE_TEXT_LOCATOR}
    ELEMENT TEXT SHOULD BE    ${CREATE_PAGE_LINK_LOCATOR}   ${CREATE_PAGE_LINK_TEXT}
    ELEMENT TEXT SHOULD BE    ${CREATE_PAGE_TEXT_LOCATOR}   ${CREATE_PAGE_TEXT2_TEXT}
    LOG TO CONSOLE    Login page checked

Login with valid credentials
    [Arguments]     ${LOGIN}    ${PASSWORD}
    Input Text  ${USERNAME_FIELD_LOCATOR}   ${LOGIN}
    Input Text  ${PASSWORD_FIELD_LOCATOR}   ${PASSWORD}
    click element   ${LOGIN_BTN_LOCATOR}
    wait until element is visible    ${SEARCH_FIELD_LOCATOR}
    log to console    Login successful

Login with invalid credentials
    [Arguments]    ${LOGIN}     ${PASSWORD}
    Input Text  ${USERNAME_FIELD_LOCATOR}   ${LOGIN}
    Input Text  ${PASSWORD_FIELD_LOCATOR}   ${PASSWORD}
    click element   ${LOGIN_BTN_LOCATOR}
    wait until page contains    ${LOGIN_AS_TEXT}
    page should contain    ${LOGIN}
    page should contain    ${WRONG_PWD_TEXT}

Click on forgot password
    click element    ${FORGOT_PASSWORD_LOCATOR}
    wait until page contains    ${FORGOT_PWD_TITLE}

Click on create account
    click element    ${CREATE_ACCOUNT_BTN_LOCATOR}
    wait until page contains    ${REGISTER_OVERLAY_TITLE_TEXT}

Check registration overlay display
    element text should be    ${REGISTER_OVERLAY_TITLE_LOCATOR}     ${REGISTER_OVERLAY_TITLE_TEXT}
    element text should be    ${REGISTER_OVERLAY_SUBTITLE_LOCATOR}     ${REGISTER_OVERLAY_SUBTITLE_TEXT}
    element attribute value should be    ${REGISTER_OVERLAY_FIRSTNAME_FIELD_LOCATOR}    placeholder     ${REGISTER_OVERLAY_FIRSTNAME_FIELD_PLACEHOLDER}
    element attribute value should be    ${REGISTER_OVERLAY_SURNAME_FIELD_LOCATOR}    aria-label     ${REGISTER_OVERLAY_SURNAME_FIELD_PLACEHOLDER}
    element attribute value should be    ${REGISTER_OVERLAY_EMAIL_FIELD_LOCATOR}    aria-label     ${REGISTER_OVERLAY_EMAIL_FIELD_PLACEHOLDER}
    element attribute value should be    ${REGISTER_OVERLAY_PASSWORD_FIELD_LOCATOR}    aria-label     ${REGISTER_OVERLAY_PASSWORD_FIELD_PLACEHOLDER}
    element text should be    ${REGISTER_OVERLAY_DATE_TITLE_LOCATOR}     ${REGISTER_OVERLAY_DATE_TITLE_TEXT}
    element text should be    ${REGISTER_OVERLAY_GENDER_TITLE_LOCATOR}     ${REGISTER_OVERLAY_GENDER_TITLE_TEXT}
    element text should be    ${REGISTER_OVERLAY_SIGNUP_BTN_LOCATOR}     ${REGISTER_OVERLAY_SIGNUP_BTN_TEXT}
