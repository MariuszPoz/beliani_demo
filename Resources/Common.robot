*** Settings ***
Documentation    All generic keywords
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    Set Selenium Settings
#    Set Browser Settings
    Open Browser    about:blank     ${BROWSER}

End Web Test
    Close Browser

Set Selenium Settings
    set selenium speed      .2s
    set selenium timeout    10s

Set Browser Settings
    set window position    x=341        y=169
    set window size        width=1935   height=1090
