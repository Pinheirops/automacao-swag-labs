*** Settings ***
Resource        ../../util/browser_util.robot
Resource        ../../locators/login_locators/login_locators.robot
Resource        ../../data/login_data/login_data.robot

*** Keywords ***
Confirm
    Click Button    ${LOGIN_BUTTON}
Valid_login
    Input Text    ${EMAIL_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}

Blank_username
    Input text    ${PASSWORD_FIELD}    ${PASSWORD}

Blank_password
    Input Text    ${EMAIL_FIELD}    ${USERNAME}

Wrong_username
    Input Text    ${EMAIL_FIELD}    wrong_user01

Wrong_password
    Input Text    ${PASSWORD_FIELD}    Wrong_password01
