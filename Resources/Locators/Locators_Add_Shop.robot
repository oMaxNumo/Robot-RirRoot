*** Settings ***
Documentation     Locator For AriRoot :: Add Product

*** Variables ***

################# login Page ##########################

${locator_Username}                 xpath=//input[@type = 'email']
${locator_Password}                 xpath=//input[@type = 'password']
${button_login}                     xpath=//button[@type = 'submit']



################# Search ##########################
${Search}                       xpath=//input[@name='filters[sku]']
${Search_Button}                xpath=//button[@type='submit']
${Button_Icon_Com}              xpath=//a[@id='show_child_1']
${Button_tank}                  xpath=//a[@id='show_shop_1']
${Link_Add}                     Add
${Shop_Add}                     select_shop_id
${Add_Price}                    xpath=//input[@name='price']
${Button_Submit}                xpath=//button[@id='productUpdateButton']


# ################# Table SKU ##########################
# ${table_sku}                    xpath=//*[@class="table"]/tbody/tr[${index}]/td[3]
