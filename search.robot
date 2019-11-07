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
   

Selected some article
    Click Element   xpath=//*[@id="rso"]/div[3]/div/div[1]/div/div/div[1]/a[1]
    Wait Until Page Contains   List of Dog Breedsxx
    sleep   2
    [Teardown]    Close Browser
    
Open website google
   Open Browser   url=${Url}   browser=${Browser}   
   Input Text   name=q    Dog
   sleep   3
   Click Button   name=btnK
   Wait Until Page Contains   List of Dog Breeds
   [Teardown]    Close Browser

*** Test Cases ***
Valid Search from google
    Open website
    Enter Keyword
    Enter button for search

View article Page
    Selected some article

Search the dog from google
    Open website google