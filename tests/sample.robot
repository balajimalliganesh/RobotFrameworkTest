*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google And Check Title
    Open Browser    https://www.google.com    firefox
    Title Should Be    Google
    Close Browser
