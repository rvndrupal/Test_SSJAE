***Settings***
Documentation   Casos de Prueba  Proyecto SSJAE
Library     String
Library     ScreenCapLibrary
Library     DateTime
Resource    ./recursos.robot
Resource    ./casos.robot
Library     FakerLibrary



#robot -d resultados -i ss01  ssjae.robot
#robot -d resultados -i rd01 -i rd02  -v navegador:firefox  test.robot
#robot -d resultados  test.robot
#Vinr770919hdfltd00
#robot -d resultados  tes*.robot
#pabot --processes 20 --outputdir resultados_uno  TEST/test*.robotc


***Variables***
#${url}          http://10.16.3.29/login
${url}          https://dessistemas.senasica.gob.mx/SSJAEWeb/login.xhtml
${navegador}    chrome
${tiempo}   .1


*** Keywords ***

    

*** Test Cases ***
CC001 SSJAE (SISTEMA SSJAE 001)(HAPPY PATH)
    [Documentation]    PRUEBA SSJAE 001 (HAPPY PATH) 
    [Tags]      ss01   
    Esperar Iniciar ok    15  
    Video Iniciar  
    Login   ${url}  ${navegador}
    Calendario
    # Catalagos Categorías
    # Catalogos Organizaciones
    # Catalogos Representantes
    Agregar
    Mostrar evento
    Video Finalizar
    Cerrar

CC001 SSJAE (SISTEMA SSJAE 001)(VERSIÓN COMPLETA )
    [Documentation]    PRUEBA SSJAE 001 (VERSIÓN COMPLETA) 
    [Tags]      ss02   
    Esperar Iniciar ok    15  
    Video Iniciar  
    Login   ${url}  ${navegador}
    Calendario
    Catalagos Categorías
    Catalogos Organizaciones
    Catalogos Representantes
    Agregar
    Mostrar evento
    Video Finalizar
    Cerrar
   
    
    

