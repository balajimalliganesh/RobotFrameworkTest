*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Chrome With Safe Defaults
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --window-size=1920,1080
    Open Browser    about:blank    Chrome    options=${options}

*** Test Cases ***
Open Google And Check Title
    Open Browser    https://www.google.com    chrome
    Title Should Be    Google
    Close Browser
