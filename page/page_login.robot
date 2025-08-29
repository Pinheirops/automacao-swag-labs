*** Settings ***
Resource    ../util/resources.robot

*** Keywords ***
Login
    Input Text    ${EMAIL_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
