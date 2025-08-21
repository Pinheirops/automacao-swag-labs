*** Settings ***
Library    SeleniumLibrary
Resource    ../util/browser_util.robot
Resource    ../page/login_page/login_page.robot
Resource    ../locators/menu_locators/menu_locators.robot

*** Test Cases ***
Login com sucesso
    Open Browsers
    Valid_login
    Sleep    5
    Element Should Be Visible    ${MENU_TITLE}
    Close Browsers