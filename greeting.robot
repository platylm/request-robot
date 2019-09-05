*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Get Requests Greeting Message Hello World
    Create Session  greeting     http://localhost:3000
    ${response}=    Get Request    greeting    /say
    Should Be Equal   ${200}   ${response.status_code}
    Should Be Equal   ${response.json()["message"]}    สวัสดีชาวโลก