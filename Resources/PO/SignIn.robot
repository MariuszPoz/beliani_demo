*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SignIn} =             class=header-login-top-title
${SignIn_Button} =      class=button.login-pass
${Username_Field} =     class=login-email   #class=login-email.email-for-login.valid
${Password_Field} =     class=login-password

*** Keywords ***
Show Sign In Window
    mouse over                       ${SignIn}
    wait until element is visible    ${SignIn_Button}

Provide Login Credentials
    [Arguments]         ${EMAIL_ADDRESS}     ${PASSWORD}
    input text          ${Username_Field}    ${EMAIL_ADDRESS}
    input text          ${Password_Field}    ${PASSWORD}
    click element       ${SignIn_Button}
