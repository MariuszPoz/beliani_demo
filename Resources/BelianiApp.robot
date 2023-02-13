*** Settings ***
Documentation    Testing beliani.pl online shop
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SignIn.robot

*** Variables ***

*** Keywords ***
Open Landing Page
    LandingPage.Load   ${START_URL}
    LandingPage.Accept cookies if present
    LandingPage.Verify Page Loaded

Search for Products
    [Arguments]    ${SEARCH_TERM}
    TopNav.Search for Products      ${SEARCH_TERM}
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Product Open In New Tab

Add Product to Basket
    Product.Add to Basket

Go to Basket Via Confirmation Window
    [Documentation]    Possible only on the pop-up window after product was added to basket
    Product.Go To Basket Over Confirmation Window

Go to Basket from TopNav Menu
    TopNav.Go To Basket

Sign In
    SignIn.Show Sign In Window
    SignIn.Provide Login Credentials    ${EMAIL_ADDRESS}     ${PASSWORD}
