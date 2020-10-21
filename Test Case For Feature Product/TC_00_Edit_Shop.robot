*** Settings ***

Documentation           Test Case For Feature :: Product | Edit Shop


Resource    ../Resources/Keywords/Common_Add_Shop.robot
Resource  	../Resources/Variables/Variable.robot
Resource  	../Resources/Locators/Locators_Search.robot
Resource    ..//TestData//InputData.robot
Resource    ..//Resources//init.txt





*** Test Cases ***

TC00_Login Successful
    [Documentation]     Testcase Name : Login with Email and Password Success | Description : เข้าสู่ระบบสำเสร็จ
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}             ${password_airroot}  
    Close All Browsers                          

TC0001_Add_Shop_SKU_Shop
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}                ${password_airroot}  
    Add_Data_SKU                                ${Simple_SKU}                                          
