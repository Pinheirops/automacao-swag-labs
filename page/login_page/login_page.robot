*** Settings ***
Resource        ../../locators/login_locators/login_locators.robot
Resource        ../../data/login_data/login_data.robot
Library    SeleniumLibrary

*** Keywords ***
Valid_login
    Input Text    ${EMAIL_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click button    ${LOGIN_BUTTON}