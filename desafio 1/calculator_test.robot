*** Settings ***
Library   SeleniumLibrary
Library    XML


*** Test Cases ***
Cenario: Conta de MAIS
  Open Browser                  browser=chrome
  Go to                         url=https://testpages.herokuapp.com/styled/calculator
  Input Text                    name=number1   text=2
  Select From List By Label     function   plus
  Sleep    1                    
  Input Text                    name=number2   text=2 

  Click Button                  calculate
Cenario: Conta de VEZES

  Go to                        url=https://testpages.herokuapp.com/styled/calculator
  
  Input Text                   name=number1   text=3
  Click Element                locator=function
  Select From List By Label    function   times
  Sleep    2
  Input Text                    name=number2   text=2

  Click Button                 calculate
Cenario: Conta de MENOS

  Go to                        url=https://testpages.herokuapp.com/styled/calculator
  Input Text                   name=number1   text=9
  Click Element                locator=function
  Select From List By Label    function   minus
  Sleep                        3
  Input Text                   name=number2   text=7
  Click Button                 calculate
Cenario: Conta de DIVIDIR

  Go to                        url=https://testpages.herokuapp.com/styled/calculator
  Input Text                   name=number1   text=5
  Click Element                locator=function
  Select From List By Label    function   divide
  Sleep                        4
  Input Text                   name=number2   text=3
  Click Button                 calculate

