*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google And Check Title
    Open Browser    https://www.google.com    chrome
    Title Should Be    Google
    Close Browser
