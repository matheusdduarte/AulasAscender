*** Settings ***
Library   SeleniumLibrary
Library   Screenshot
Library    XML


*** Test Cases ***
Cenario: Compra de Vestido
  Open Browser               browser=chrome
  Go to                      url=http://automationpractice.com/index.php            
  Click Element              link=Printed Dress
  Click Button               name=Submit
  Wait Until Page Contains   Product successfully added to your shopping cart
  Sleep    5s
  Click Element              //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
  sleep    5s
  Click Element             //*[@id="center_column"]/p[2]/a[1]
  Sleep    5S
  Input Text                locator=email   text=duartematheus64@gmail.com
  Input Text                locator=passwd       text=Popular01-
  Click Element             //*[@id="SubmitLogin"]
  Click Element             //*[@id="center_column"]/form/p/button
  Select Checkbox           name=cgv   
  Click Element             //*[@id="form"]/p/button