*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Product_Page_Loaded} =               Add to basket
${Add_To_Cart_Button} =                class=product-addcart-big.btn-addcart-link.add-to-cart
${Product_Added_To_Basket} =           class=b-short_cart
${Close_Confirmation_Window}           class=cross
${Basket_Button} =                     class=b-short_cart-link_cart.link-button-white
*** Keywords ***
Verify Product Open In New Tab
    wait until page contains            ${Product_Page_Loaded}

Add to Basket
    click element                       ${Add_To_Cart_Button}
    wait until element is visible       ${Product_Added_To_Basket}

Close Confirmation Window
    click element                       ${Close_Confirmation_Window}

Go to Basket Over Confirmation Window
    click element                       ${Basket_Button}

Go to Checkout Over Confirmation Window



