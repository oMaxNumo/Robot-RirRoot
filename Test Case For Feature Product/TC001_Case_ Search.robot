*** Settings ***

Documentation           Test Case For Feature :: Product | Serach Product


Resource    ../Resources/Keywords/Common.robot
Resource  	../Resources/Variables/Variable.robot
Resource  	../Resources/Locators/Locators.robot
Resource    ..//TestData//InputData.robot
Resource    ..//Resources//init.txt





*** Test Cases ***


TC00_Login Successful
    [Documentation]     Testcase Name : Login with Email and Password Success | Description : เข้าสู่ระบบสำเสร็จ
    Open WebBrowser
    Login with Email and Password       ${username_ariroot}             ${password_airroot}  
    Close All Browsers

TC001_Search Product Partner Code & Name:: 12314-dell
    [Documentation]    Testcase Name : ทดสอบกรณี Search Product:: Partner Code | Partner Code & Name:: 12314-dell
    Open WebBrowser
    Login with Email and Password                           ${username_ariroot}             ${password_airroot}
    Search Partner Code & Name:: 12314-dell                 ${locator_Search_SKU}       ${partner_code_search}      
    Close All Browsers

TC002_Search Product Code & Name:: 10000001-Shopee
    [Documentation]    Testcase Name : ทดสอบกรณี Search Product:: Partner Code | Channel Code & Name:: 10000001-Shopee
    Open WebBrowser
    Login with Email and Password                      ${username_ariroot}             ${password_airroot}
    Search Partner Code & Name:: 10000001-Shopee       ${locator_Search_SKU}             ${partner_code_search_shopee}
    Close All Browsers

TC003_Search Partner Code:: 0001
    [Documentation]    Testcase Name : ทดสอบกรณี Search Product:: Partner Code | Partner Code:: 0001
    Open WebBrowser                                 
    Login with Email and Password                   ${username_ariroot}             ${password_airroot}
    Search Partner Code:: 0001                      ${locator_Search_SKU}           ${partner_code}
    Close All Browsers

TC004_Search DropDown:: Show ALL
    [Documentation]    Testcase Name : 1.ทดสอบกรณี Search ในหน้า Product เลือก DropDown:: Show All
    Open WebBrowser                                 
    Login with Email and Password                   ${username_ariroot}             ${password_airroot}
    Search DropDown:: Show All
    Close All Browsers

TC005_Search DropDown:: E-Bay
    [Documentation]    Testcase Name : 1.ทดสอบกรณี Search ในหน้า Product เลือก DropDown:: E-Bay
    Open WebBrowser                                 
    Login with Email and Password                   ${username_ariroot}             ${password_airroot}
    Search DropDown:: E-Bay
    Close All Browsers


    


