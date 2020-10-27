*** Settings ***
Documentation     Locator For AripAoot :: Add Shop Shopee Product



*** Keywords ***

################################### Open WebBrowser ###################################
Open WebBrowser
    Open Browser                ${URL_Menue_Product}       ${BROWSER_Chrome} 
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
Add_Data_SKU_Product_Child_into_200
    [Arguments]         @{SKU}          
    Sleep             5s
    @{SKU}            Create List       120007212     120009822       120011479       120013044       120013489       120017794       120017998       120018295       120018296       120018299       120018304       120019874            120021226       120021444       120022327       120022578       120022579       120022580       120022785       120022843       120023103       120023345       120023346       120023447       120023457       120023458       120023483       120023484       120023638       120023645       120023646       120023726       120023727       120023728       120023943       120023945       120024132       120024239       120024276       120024277       120024318       120024319       120024320       120024353       120024440       120024466       120024608       120024609       120024610       120024611       120024629       120024772       120024774       120024778       120024780       120024843       120024848       120024902       120024906       120024907       120024908       120024939       120024999       120025000       120025001       120025002       120025003       120025004       120025005       120025009       120025010       120025011       120025012       120025013       120025014       120025015       120025016       120025017       120025057       120025059       120025062       120025142       120025143          120025145        120025152       120025153       120025164       120025166       120025174       120025175       120025176       120025185       120025186       120025187       120025188       120025189       120025190       120025194       120025195       120025196       120025197       120025202       120025203       120025204       120025205       120025206       120025211       120025212       120025213       120025214       120025215       120025216       120025217       120025239       120025240       120025241       120025251       120025252       120025255       120025256       120025257       120025258       120025259       120025260       120025271       120025272       120025274       120025275       120025281       120025305       120025309       120025310       120025312       120025319       120025320       120025321       120025323       120025324       120025327       120025328       120025329       120025330       120025331       120025338       120025339       120025345       120025374       120025375       120025378       120025397       120025398       120025399       120025413       120025414       120025417       120025418       120025422       120025423       120025424       120025425       120025426       120025427       120025429       120025430       120025431       120025432       120025433       120025434       120025442       120025443       120025446       120025452       120025453       120025516       120025517       120025518       120025519       120025522       120025523       120025524       120025525       120025526       120025527       120025528       120025529       120025531       120025583       120025629       120025635       120025636       120025637       120025639       120025704       120025710       120025711       120025712       120025713       120025714       120025715       120025716       120025717       120025718       120025744       120025745       120025754       120025755       120025756       120025757
    ${list_length}            Get Length          ${SKU}

    Set Test Variable        ${v}      0
    FOR    ${i}        IN RANGE       ${list_length}
        ${Data_SKU}=         Remove String       ${SKU[${V}]}
        Input Text              ${Search}               ${Data_SKU}
        ${v}                Evaluate            ${v}+1
        Sleep               5s
        Click Button        ${Search_Button} 
        Click Link          ${Button_Icon_Com}
        Click Link          ${Button_tank}
        Sleep               5s
        Click Link          ${Link_Add}
        Sleep               5s
        Select From List By Value                       select_shop_id          1
        Click Button                                    ${Button_Submit}
        Wait Until Element Is Visible                   ${Button_Yes} 
        Sleep               3s
        Click Element                                   ${Button_Yes} 
        Wait Until Page Does Not Contain Element        ${Button_Yes}
        Sleep               5s         
        Wait Until Element Is Visible            ${Link_Product} 
        Click Element                            ${Link_Product} 
        Sleep               5s  
    END




#######Add 120025520 Shop Product Child
######Shop id:: select_shop_id value::1=Shop Code: 0001, Name: Shopee_Test
Add_Data_SKU_Product_Child_One
    [Arguments]             ${SKU_Child}
    ${Search_SKU}           Run Keyword And Return Status            Wait Until Element Is Visible      ${Search}     3s
    Run Keyword If              '${Search_SKU}' != 'True'            Fail       Failed, Don't Find Button Search.
    Input Text              ${Search}           ${SKU_Child}
    Click Button            ${Search_Button}
    Click Link              ${Button_Icon_Com}
    Sleep                   3s
    Click Link              ${Button_tank1} 
    Sleep                   2s
    Click Link              ${Link_Add}
    Select From List By Value                select_shop_id          1
    Click Button                             ${Button_Submit}
    Wait Until Element Is Visible            ${Button_Yes}
    Sleep                   5s  
    Click Element                            ${Button_Yes}  



#######Add 120025521 Shop Product Child
######Shop id:: select_shop_id value::1=Shop Code: 0001, Name: Shopee_Test
Add_Data_SKU_Product_Child_Two
    [Arguments]             ${SKU_Child}
    ${Search_SKU}           Run Keyword And Return Status            Wait Until Element Is Visible      ${Search}     3s
    Run Keyword If              '${Search_SKU}' != 'True'            Fail       Failed, Don't Find Button Search.
    Input Text              ${Search}           ${SKU_Child}
    Click Button            ${Search_Button}
    Click Link              ${Button_Icon_Com}
    Sleep                   3s
    Click Link              ${Button_tank2} 
    Sleep                   2s
    Click Link              ${Link_Add}
    Select From List By Value                select_shop_id          1
    Click Button                             ${Button_Submit}
    Wait Until Element Is Visible            ${Button_Yes}
    Sleep                   5s  
    Click Element                            ${Button_Yes}  
   






