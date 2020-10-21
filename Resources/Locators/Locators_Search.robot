*** Settings ***
Documentation     Locator For AriRoot :: Search

*** Variables ***

################# login Page ##########################

${locator_Username}                 xpath=//input[@type = 'email']
${locator_Password}                 xpath=//input[@type = 'password']
${button_login}                     xpath=//button[@type = 'submit']



################################### ทดสอบกรณี Search Product:: Partner Code & Name:: 12314-dell ###################################
${locator_Search_SKU}               xpath=//input[@name = 'filters[sku]']
${button_search}                    xpath=//button[@type = 'submit']
${text_Empty}                       xpath=//td[contains(., 'Empty')]
${empty}                            Empty


################################### ทดสอบกรณี Search Product:: Channel Code & Name:: 10000001-Shopee ###################################
${locator_Search_SKU}               xpath=//input[@name = 'filters[sku]']
${button_search}                    xpath=//button[@type = 'submit']
${text_Empty}                       xpath=//td[contains(., 'Empty')]
${empty}                            Empty


################################### ทดสอบกรณี Search Product:: Partner Code | Partner Code:: 0001 ###################################
${locator_Search_SKU}               xpath=//input[@name = 'filters[sku]']
${button_search}                    xpath=//button[@type = 'submit']
${text_0001}                        xpath=(//td[contains(., '0001')])[1]
${0001}                             0001


################################### ทดสอบกรณี Search Product:: Check Box Without Product Child ###################################   
${Check_Box}                        xpath=//input[@id='without_child_checkbox']
${Check_Box_name}                   xpath=//label[@for='without_child_checkbox']
${Check_Box2}                       xpath=//label[@id='label_without_child_checkbox']




################################### Exตัวลอง ###################################   


${remember}                         xpath=//input[@id='remember']
${Button_Edit_Partnaer}             xpath=//a[@id='edit_3']
