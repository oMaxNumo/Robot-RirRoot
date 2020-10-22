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

    
#######Loop for IN RANGE Add Shop 200 Shop 
######Shop id:: select_shop_id value::1=Shop Code: 0001, Name: Shopee_Test
######Shop id:: select_shop_id value::2=Shop Code: 0002, Name: LaZaDa

