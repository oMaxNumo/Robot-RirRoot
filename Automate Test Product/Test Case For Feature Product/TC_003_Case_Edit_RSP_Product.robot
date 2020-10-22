*** Settings ***

Documentation           Test Case For Feature :: Product | Edit RSP


Resource    ../Resources/Keywords/Common_Search.robot
Resource  	../Resources/Variables/Variable.robot
Resource  	../Resources/Locators/Locators_Search.robot
Resource    ..//TestData//InputData.robot
Resource    ..//Resources//init.txt





*** Test Cases ***


TC00_Login Successful
    [Documentation]     Testcase Name : Login with Email and Password Success | Description : เข้าสู่ระบบสำเสร็จ
    Open WebBrowser
    Login with Email and Password       ${username_ariroot}             ${password_airroot}  
    Close All Browsers