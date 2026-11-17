*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${LOGIN URL}    https://cronometer.com/login/
${BROWSER}    chrome
${DELAY}    1s


*** Keywords ***
Open Browser to login page
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Title should be       Cronometer Login


Type in username
    [Arguments]    ${username}
    Input Text     id=username    ${username}

Type in password
    [Arguments]    ${password}
    Input Text     id=password    ${password}

Submit credentials
    Click Button   id=login-button