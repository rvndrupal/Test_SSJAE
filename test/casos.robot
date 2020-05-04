***Settings***
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     BuiltIn


***Variables****
${curp}
${rfc}
${pdf1}     C:\\pdf\\pdf1.pdf
${pdf2}     C:\\pdf\\pdf2.pdf



***Keywords***  

Login
    Esperar Iniciar Forzar    10
    [Arguments]     ${arg1}     ${arg2}
     #Video Iniciar 
    Esperar Iniciar ok    5
    Dormir Todos  ${tiempo}
    Abrir navegador  ${arg1}   ${arg2}  
    Maximizar 
    Click   //*[@id="details-button"]
    Click   //*[@id="proceed-link"]
    Texto  //input[contains(@id,'j_username')]      rodrigo
    Texto   //input[contains(@id,'j_password')]     villanueva
    Click  (//button[contains(.,'Enviar')])[1]
    Dormir    3
    Scroll  0  250
    Texto  //input[contains(@id,'j_username')]      olivia.rodriguez
    Texto   //input[contains(@id,'j_password')]     senades2020
    Resultado  .5  ${dir}/Login_password.png   Se introducen los datos para el Login
    Click  (//button[contains(.,'Enviar')])[1]
    Scroll  0  500
    Dormir  1
    Scroll  0   150
    Resultado  .5  ${dir}/Calendario.png   Se muestra el calendario


Calendario
    Esperar Iniciar Forzar    10
    Esperar Iniciar ok    5
    Texto  //input[contains(@id,'buscarfecha:anio')]  2018
    Dormir  1
    Texto  //input[contains(@id,'buscarfecha:anio')]  2020
    SLI     //select[@id='buscarfecha:idMes']   4
    Resultado  .5  ${dir}/Buscar_2020.png   Se introducen los datos para el Login
    Dormir  2
    Click  //a[@href='#'][contains(.,'Buscar')]
    Scroll   0   600
    Resultado  .5  ${dir}/Calendario_resultado.png   Se introducen los datos para el Login



  
    
    

