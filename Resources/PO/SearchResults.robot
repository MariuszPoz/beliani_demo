*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#${search_results} =     Wynik wyszukiwania dla:
#${search_results} =     Suchergebnis für:
${search_results} =     Search results for:


*** Keywords ***
Verify Search Completed
    wait until page contains    ${search_results}
    wait until element is visible    class=price-box-price      30

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    click element       class=itemBox
    Switch Window       locator=NEW
