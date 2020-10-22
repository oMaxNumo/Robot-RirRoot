*** Settings ***
Documentation     Locator For AripAoot :: Add Product


*** Keywords ***

################################### Open WebBrowser ###################################
Open WebBrowser
    Open Browser                ${URL_Menue_Product}      ${BROWSER_Chrome} 
    Sleep                       2s 
    Maximize Browser Window


################################### Login Page ###################################
Login with Email and Password
    [Arguments]     ${username_ariroot}                ${password_airroot}    
    Wait Until Element Is Visible                      ${locator_Username}                3s 
    Input Text                  ${locator_Username}           ${username_ariroot}                
    Input Text                  ${locator_Password}           ${password_airroot} 
    Click Element               ${button_login}               
    Sleep                       3s
    ${Clicked}                  Run Keyword And Return Status          Wait Until Page Contains           AirRoot               3s   
    Run Keyword If              '${Clicked}' == 'True'             Log     Passed, Login Web Success.
    ...  ELSE                   Fail       Failed, Login Web Not Success.
    Sleep                       5s

    
################################### ทดสอบกรณี Add Product ในหน้า Product::เพิ่มข้อมูลไม่สำเร็จ ###################################
Add Price Product Failed  
    FOR    ${i}    IN RANGE    1
        Input Text                          ${locator_Search_SKU}       120025519  
        Click Element                       ${button_search}
        Sleep                               3s              
        Click Link                          show_child_178
        Click Link                          show_shop_1
        Click Link                          ${add_link}
        Select From List By Value           ${Drop_Down_Add}        ${Value_Drop_Down_Shop}
        Input Text                          price       -   
        Sleep                               3s
        Click Element                       ${Button_Submit} 
        Click Element                       ${button_Yes}  
        Sleep                               3s 
        ${Check}                  Run Keyword And Return Status          Wait Until Page Contains           AirRoot, success.            3s   
        Run Keyword If              '${Check}' == 'True'            The price must be a number, Success.
        Sleep                               5s
    END


################################### ทดสอบกรณี Add Product ในหน้า Product::ยกเลิกกการเพิ่มข้อมูล ###################################
Cannel_Add_Price 
    FOR    ${i}    IN RANGE    1
        Input Text                          ${locator_Search_SKU}       120025519  
        Click Element                       ${button_search}
        Sleep                               3s              
        Click Link                          show_child_178
        Click Link                          show_shop_1
        Click Link                          ${add_link}
        Select From List By Value           ${Drop_Down_Add}        ${Value_Drop_Down_Shop}
        Input Text                          price       4500  
        Sleep                               3s
        Click Element                       ${Button_Submit} 
        Click Element                       ${button_Cancel}  
        Sleep                               3s 
    END