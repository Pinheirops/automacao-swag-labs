*** Settings ***
Resource    ../util/resources.robot

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
