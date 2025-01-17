*** Settings ***
Library         SeleniumLibrary
Documentation   A Test For To-Do-List Website
Suite Teardown   Close Browser

*** Variables ***
${url}         https://abhigyank.github.io/To-Do-List/
${browser}     Chrome
${item_eng}    Task
${item_thai}   งาน
${item_number}  3
${item_special_char}    !@#$%^&*
${item_space}   Test space

*** Keywords ***
Visit To-Do-List Website
    Open Browser    ${url}   ${browser} 

Add Item
    [Arguments]     ${item_eng}     ${item_thai}        ${item_number}      ${item_special_char}        ${item_space}        
    Input Text      xpath=//*[@id="new-task"]  ${item_eng}
    Sleep           1
    Click Element   xpath://button/i[text()='add']
    Sleep           1
    Input Text      xpath=//*[@id="new-task"]  ${item_thai}
    Sleep           1
    Click Element   xpath://button/i[text()='add']
    Sleep           1
    Input Text      xpath=//*[@id="new-task"]  ${item_number}
    Sleep           1
    Click Element   xpath://button/i[text()='add']
    Sleep           1
    Input Text      xpath=//*[@id="new-task"]  ${item_special_char}
    Sleep           1
    Click Element   xpath://button/i[text()='add']
    Sleep           1
    Input Text      xpath=//*[@id="new-task"]  ${item_space}
    Sleep           1
    Click Element   xpath://button/i[text()='add']
    Sleep           1
    
Delete Task
    Click Element   xpath=/html/body/div/div/div[1]/a[2]
    Sleep           1
    Click Element   xpath=//*[@id="2"]/span
    Sleep           1

Check Task
    Click Element   xpath=/html/body/div/div/div[1]/a[2]
    Sleep           1
    Click Element   xpath=//*[@id="incomplete-tasks"]/li/label/span[4]
    Sleep           1

Delete Completed
    Click Element   xpath=/html/body/div/div/div[1]/a[3]/span
    Sleep           1
    Click Element   xpath=/html/body/div/div/div[4]/ul/li/button
    Sleep           1
    Close Browser

*** Test Cases ***
TC_01 : Visit To-Do-List Website
    [DOCUMENTATION]     Verify that can visit website.
    Open Browser    ${url}   ${browser} 

TC_02 : Add Item
    [DOCUMENTATION]     Verify that can add item in different case.
    Add ITEM        ${item_eng}  ${item_thai}    ${item_number}  ${item_special_char}    ${item_space}

TC_03 : Delete Task In To-Do Task Tap
    [DOCUMENTATION]     Verify that after add item in Add Item tap then can delete task that already added in To-Do Task Tap.
    Delete Task

TC_04 : Check Taskn In To-Do Task Tap
    [DOCUMENTATION]     Verify that after add item in Add Item tap then can check complete task in To-Do Task Tap.
    Check Task 

TC_05 : Delete Task In Completed Tap 
    [DOCUMENTATION]     Verify that after check compelte task in To-Do Task Tap then can delete task that already check in Completed Tap.
    Delete Completed    
