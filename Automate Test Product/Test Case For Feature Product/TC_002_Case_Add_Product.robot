*** Settings ***

Documentation           Test Case For Feature :: Product | Add Product Feature:: Product


Resource    ../Resources/Keywords/Common_Add_Product.robot
Resource  	../Resources/Variables/Variable.robot
Resource  	../Resources/Locators/Locators_Add_Product.robot
Resource    ..//TestData//InputData.robot
Resource    ..//Resources//init.txt





*** Test Cases ***

TC00_Login Successful
    [Documentation]     Testcase Name : Login with Email and Password Success | Description : เข้าสู่ระบบสำเสร็จ
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}             ${password_airroot}  
    Close All Browsers                          

TC01_Add_Price_Product_Failed 
    [Documentation]     Testcase Name : ทดสอบกรณีการทำงาน Add Product Feature:: Product | Description : เพิ่มราคา Product ไม่สำเร็จ
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}             ${password_airroot}
    Add Product Status Failed                  
    Close All Browsers

TC02_Cannel_Add_Price_Producet
    [Documentation]     Testcase Name : ทดสอบกรณีการทำงาน Add Product Feature:: Product | Description : ยกเลิกการเพิ่มราคา Product 
    Open WebBrowser
    Login with Email and Password               ${username_ariroot}             ${password_airroot}
    Cannel_Add_Price 
     Close All Browsers 


