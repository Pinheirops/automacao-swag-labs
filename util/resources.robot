*** Settings ***    #     integracao de todos os arquivos

Resource    ../util/browser_util.robot

#    menu
Resource    ../page/page_menu.robot
Resource    ../locators/locators_menu.robot
Resource    ../data/data_menu.robot

#    login
Resource     ../locators/locators_login.robot
Resource     ../data/data_login.robot
Resource    ../page/page_login.robot


