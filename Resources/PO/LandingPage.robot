*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Accept_All_Cookies} =             Accept all Cookies
${Accept_All_Cookies_Button} =      //*[@id="cookie_warning"]/div[2]/div[1]/div[3]/input[2]
${LANDING_PAGE_HEADER} =            beliani

*** Keywords ***
Load
    [Arguments]    ${Start_Url}
    Go To    ${START_URL}

#TODO: Check how to run keyword if element is found
Accept Cookies If Present
    ${count}=   get element count   ${Accept_All_Cookies_Button}
    IF  ${count} > 0    Click Button   ${Accept_All_Cookies_Button}

Verify Page Loaded
    wait until page contains    ${LANDING_PAGE_HEADER}  15
#    Wait Until Element Is Visible    locator
    Wait Until Element Is Enabled    locator

Need to Accept Cookies
    page should contain    ${Accept_All_Cookies}

#Change Language to Polish
#    click element    //*[@id="header"]/div[2]/div[9]/p