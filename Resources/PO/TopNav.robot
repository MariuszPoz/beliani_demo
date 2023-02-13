*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${search_term_id} =     id=search-query
${Basket_Icon} =        class="new_icon-beliani_basket"

*** Keywords ***
Search for Products
    [Arguments]    ${SEARCH_TERM}
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text          ${search_term_id}   ${SEARCH_TERM}

Submit Search
    press keys          ${search_term_id}   ENTER

Go To Basket
    #TODO define locator for basket
    click element       basket

Check
