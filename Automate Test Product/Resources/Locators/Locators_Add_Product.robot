*** Settings ***
Documentation     Locator For AriRoot :: Add Product

*** Variables ***

################# login Page ##########################

${locator_Username}                 xpath=//input[@type = 'email']
${locator_Password}                 xpath=//input[@type = 'password']
${button_login}                     xpath=//button[@type = 'submit']


################# Add Price Product Failed ##########################
${locator_Search_SKU}               xpath=//input[@name = 'filters[sku]']
${button_search}                    xpath=//button[@type = 'submit']
${icon_com}                         xpath=//a[@id='show_child_178'
${Icon_tank}                        xpath=//a[@id='show_shop_1']
${add_link}                         Add
${Drop_Down_Add}                    xpath=//select[@id='select_shop_id']    
${Value_Drop_Down_Shop}             2
${Button_Submit}                    xpath=//button[@id='productUpdateButton']
${button_Yes}                       xpath=//*[@class='swal2-confirm swal2-styled'][contains(text(), 'Yes')]
${display}                          xpath=(//li['The price must be a number.'])[13]"


################# Add Price Product Failed ##########################
${locator_Search_SKU}               xpath=//input[@name = 'filters[sku]']
${button_search}                    xpath=//button[@type = 'submit']
${icon_com}                         xpath=//a[@id='show_child_178'
${Icon_tank}                        xpath=//a[@id='show_shop_1']
${add_link}                         Add
${Drop_Down_Add}                    xpath=//select[@id='select_shop_id']    
${Value_Drop_Down_Shop}             2
${Button_Submit}                    xpath=//button[@id='productUpdateButton']
${button_Cancel}                    xpath=//button[@class='swal2-cancel swal2-styled']
${display}                          xpath=(//li['The price must be a number.'])[13]"
