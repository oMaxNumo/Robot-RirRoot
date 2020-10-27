*** Settings ***

Documentation           Test Case For Feature :: Product | Add Shop 200 Shop


Resource    ../Resources/Keywords/Common_Add_Shop.robot
Resource  	../Resources/Variables/Variable.robot
Resource  	../Resources/Locators/Locators_Add_Shop.robot
Resource    ..//TestData//InputData.robot
Resource    ..//Resources//init.txt





*** Test Cases ***

TC00_Login Successful
    [Documentation]     Testcase Name : Login with Email and Password Success | Description : เข้าสู่ระบบสำเสร็จ
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}             ${password_airroot}  
    Close All Browsers  


TC001_Add_Product_Child_into_200_Shop
    [Documentation]     Testcase Name : Add Product Child Shopee | Description : เพิ่มข้อมูล Product main Shopee เข้าสู่ระบบสำเสร็จ
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}             ${password_airroot}  
    Add_Data_SKU_Product_Child_into_200                            @{SKU}          
    Close All Browsers


TC002_Add_Product_Child_One_Child
    [Documentation]     Testcase Name : Add Product Child Shopee 2 Child 120025519,120025521 | Description : เพิ่มข้อมูล Product Child Shopee เข้าสู่ระบบสำเสร็จ
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}             ${password_airroot}  
    Add_Data_SKU_Product_Child_One              ${SKU_Child}

    Close All Browsers


TC002_Add_Product_Child_Two_Child
    [Documentation]     Testcase Name : Add Product Child Shopee 2 Child 120025519,120025520 | Description : เพิ่มข้อมูล Product Child Shopee เข้าสู่ระบบสำเสร็จ
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}             ${password_airroot}  
    Add_Data_SKU_Product_Child_Two              ${SKU_Child}
    Close All Browsers



