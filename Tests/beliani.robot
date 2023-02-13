*** Settings ***
Documentation   Contains web tests for beliani.ch online shop
Resource        ../Resources/Common.robot
Resource        ../Resources/BelianiApp.robot
Test Setup          Common.Begin Web Test
Test Teardown       Common.End Web Test

*** Variables ***
${BROWSER} =            edge
${START_URL} =          https://www.beliani.ch
#TODO: Hide login credentials!
${EMAIL_ADDRESS} =
${PASSWORD} =
${SEARCH_TERM} =        manhattan

*** Test Cases ***
Should be able to open url
    [Tags]      1001
    BelianiApp.Open Landing Page

Should be able to search for product
    [Tags]    1002
    BelianiApp.Open Landing Page
    BelianiApp.Search for Products     ${SEARCH_TERM}

Should be able to select product from search results
    [Tags]    1003
    BelianiApp.Open Landing Page
    BelianiApp.Search for Products     ${SEARCH_TERM}
    BelianiApp.Select Product from Search Results

Should be able to add product to basket without signing in
    [Tags]    1004
    BelianiApp.Open Landing Page
    BelianiApp.Search for Products     ${SEARCH_TERM}
    BelianiApp.Select Product from Search Results
    BelianiApp.Add Product to Basket
    BelianiApp.Go To Basket Via Confirmation Window

Should be able to sign in
    [Tags]    1005
    BelianiApp.Open Landing Page
    BelianiApp.Sign In
