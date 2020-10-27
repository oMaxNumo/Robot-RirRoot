*** Settings ***
Documentation     Locator For AriRoot :: Add Product

*** Variables ***

################# login Page ##########################

${locator_Username}                 xpath=//input[@type = 'email']
${locator_Password}                 xpath=//input[@type = 'password']
${button_login}                     xpath=//button[@type = 'submit']



################# Search ##########################
${Search}                       xpath=//input[@name = 'filters[sku]']
${Search_Button}                xpath=//button[@type='submit']
${Button_Icon_Com}              xpath=//a[@id='show_child_1']
${Button_tank}                  xpath=//a[@id='show_shop_1']
${Link_Add}                     xpath=//a[contains(@class,'btn btn-success')]
${Shop_Add}                     select_shop_id
${Add_Price}                    xpath=//input[@name='price']
${Button_Submit}                xpath=//button[@id='productUpdateButton']
${Button_Yes}                   xpath=//button[@class='swal2-confirm swal2-styled']



################# Add_Shop_200Shop ##########################
${Link_Product}                 xpath=(//a[contains(@class,'nav-link ')])[6]    



#################### Add_Data_One_SKU_Product_Child #################### 
${Button_tank1}                 xpath=//a[@ID= 'show_shop_1']
${Button_tank2}                 xpath=//a[@ID= 'show_shop_2']

