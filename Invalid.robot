*** Settings ***
Test setup       Open Browser to login page
Test Template    Invalid login
Test teardown    Close Browser
Resource         InvalidLogIn.resource



*** Test Cases ***   Username       Password
Invalid username     invalid        mode
Invalid password     demo           invalid
Both invalid         invalid        invalid
Empty username       ${EMPTY}       mode
Empty password       demo           ${EMPTY}    
Both empty           ${EMPTY}       ${EMPTY}



*** Keywords ***
Invalid login
    [Arguments]         ${username}    ${password}
    Type in username    ${username}
    Type in password    ${password}
    Submit credentials