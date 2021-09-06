*** Settings ***
Library    SeleniumLibrary
Resource    ../CL/ForgotPasswordPageCL.robot
Resource    ../ObjectRepository/ForgotPasswordPageLocators.robot

*** Variables ***

*** Keywords ***
Check forgot password page display
    element text should be    ${FORGOT_PWD_PAGE_TITLE_LOCATOR}  ${FORGOT_PWD_TITLE}
    element text should be    ${FORGOT_PWD_PAGE_SUBTITLE_LOCATOR}   ${FORGOT_PWD_SUBTITLE_TEXT}
    element attribute value should be    ${FORGOT_PWD_PAGE_EMAIL_FIELD_LOCATOR}     placeholder     ${FORGOT_PWD_PAGE_EMAIL_FIELD_PLACEHOLDER}
    element text should be    ${FORGOT_PWD_PAGE_CANCEL_BTN_LOCATOR}     ${FORGOT_PWD_PAGE_CANCEL_BTN_TEXT}
    element text should be    ${FORGOT_PWD_PAGE_SEARCH_BTN_LOCATOR}     ${FORGOT_PWD_PAGE_SEARCH_BTN_TEXT}
