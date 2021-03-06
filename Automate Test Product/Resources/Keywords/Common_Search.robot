*** Settings ***
Documentation     Locator For AripAoot :: Search


*** Keywords ***

################################### Open WebBrowser ###################################
Open WebBrowser
    Open Browser                ${URL_Menue_Product}        ${BROWSER_Chrome} 
    Sleep                       2s 
    Maximize Browser Window


################################### Login Page ###################################
Login with Email and Password
        [Arguments]     ${username_ariroot}                ${password_airroot}    
    Wait Until Element Is Visible                      ${locator_Username}                3s 
    Input Text                  ${locator_Username}           ${username_ariroot}                
    Input Text                  ${locator_Password}           ${password_airroot} 
    Click Element               ${button_login}
    Click Element               
    Sleep                       3s
    ${Clicked}                  Run Keyword And Return Status          Wait Until Page Contains           AirRoot               3s   
    Run Keyword If              '${Clicked}' == 'True'             Log     Passed, Login Web Success.
    ...  ELSE                   Fail       Failed, Login Web Not Success.
    Sleep                       5s


################################### ทดสอบกรณี Search Product:: Partner Code & Name:: 12314-dell ###################################
Search Partner Code & Name:: 12314-dell
    [Arguments]     ${locator_Search_SKU}       ${partner_code_search}
    Input Text                                  ${locator_Search_SKU}       ${partner_code_search}
    Click Element                               ${button_search} 
    ${text_Empty}        Get text               ${text_Empty}
    Should be equal as strings                  ${empty}      ${text_Empty}
    Sleep                                       10s


################################### ทดสอบกรณี Search Product:: Channel Code & Name:: 10000001-Shopee ###################################
Search Partner Code & Name:: 10000001-Shopee
    [Arguments]     ${locator_Search_SKU}       ${partner_code_search_shopee}
    Input Text                                  ${locator_Search_SKU}       ${partner_code_search_shopee}
    Click Element                               ${button_search} 
    ${text_Empty}        Get text               ${text_Empty}
    Should be equal as strings                  ${empty}      ${text_Empty}
    Sleep                                       10s


################################### ทดสอบกรณี Search Product:: Partner Code | Partner Code:: 0001 ###################################
Search Partner Code:: 0001
    [Arguments]     ${locator_Search_SKU}       ${partner_code}
    Input Text                                  ${locator_Search_SKU}         ${partner_code}
    Click Element                               ${button_search}
    ${text_0001}        Get text                ${text_0001}
    Should be equal as strings                  ${0001}      ${text_0001}
    Sleep                                       10s



################################### เนื่องจากกรณีนี้ไม่มีการส่งค่า Arguments 
################################### เลยให้ Robot Capture Page Screenshot เพื่อเอาผลลัพท์ออกมา 
################################### ทดสอบกรณี Search Product:: Product เลือก DropDown:: Show All ###################################   
Search DropDown:: Show All
    Select From List By Label                   filters[partner_code]       Show All
    Click Element                               ${button_search}
    Capture Page Screenshot
    Sleep                                       10s


################################### เนื่องจากกรณีนี้ไม่มีการส่งค่า Arguments 
################################### เลยให้ Robot Capture Page Screenshot เพื่อเอาผลลัพท์ออกมา 
################################### ทดสอบกรณี Search Product:: Product เลือก DropDown:: E-Bay ###################################   
Search DropDown:: 00001 - Topvalue
    Select From List By Value                   filters[partner_code]       0001
    Click Element                               ${button_search}
    Capture Page Screenshot
    Sleep                                       10s


################################### เนื่องจากกรณีนี้ไม่มีการส่งค่า Arguments 
################################### เลยให้ Robot Capture Page Screenshot เพื่อเอาผลลัพท์ออกมา 
################################### ทดสอบกรณี Search Product:: Check Box Without Product Child ###################################   
Search Product:: Check Box Without Product Child    
    Sleep    1s
    Select Checkbox             ${Check_Box}
    Click Element               ${button_search}
    Sleep    5s

Ex_Click 
    [Arguments]                 ${Button_Edit_Partnaer} 
    Click Link                  ${Button_Edit_Partnaer} 
    Sleep    5s
