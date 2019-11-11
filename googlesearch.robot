*** Settings ***
Library    Selenium2Library
Force Tags   BrowserStack

*** Variables ***
${Url}    https://www.google.com/
${Browser}    chrome



*** Keywords ***
Open website
   Open Browser   url=${Url}   browser=${Browser}   
Enter Keyword
    Input Text   name=q    Dog
    sleep   3
Enter button for search
    Click Button   name=btnK
    Wait Until Page Contains   List of Dog Breeds
    sleep   3
    [Teardown]    Close Browser


*** Test Cases ***
Valid Search from google
    Open website
    Enter Keyword
    Enter button for search
