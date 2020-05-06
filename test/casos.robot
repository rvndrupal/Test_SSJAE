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
${categoria}        Demo dos
${siglas}           Demd
${Organizacion}     Demo Organización
${nombre}    Rodrigo
${Apellido}     Villanueva
${Nieto}        Nieto
${cargo}        Qa



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
    Resultado  .5  ${dir}/Buscar_2020.png   Buscar
    Dormir  .5
    Click  //a[@href='#'][contains(.,'Buscar')]
    Scroll   0   600
    Resultado  .5  ${dir}/Calendario_resultado.png   Calendario Resultados
    Click  //a[@href='#'][contains(.,'Semana')]
    Scroll   0   600
    Resultado  .5  ${dir}/Calendario_semana.png   Calendario por Semana
    Scroll  0  100


Catalagos Categorías
    Click  //a[contains(@id,'j_idt9:linkCatalogos')]
    Scroll  0  150
    Click  //a[@href='#'][contains(.,'Categorías')]
    Click  //a[@href='#'][contains(.,'Agregar categoría')]
    Scroll  0  250
    Texto  //input[@id='busquedaAltaForm:idDependencia']  ${categoria}
    Texto  //input[contains(@id,'busquedaAltaForm:idSiglas')]  ${siglas}
    Click  //a[@href='#'][contains(.,'Guardar')]
    Click  //a[contains(@id,'j_idt9:linkCatalogos')]
    Scroll  0  150
    Click  //a[@href='#'][contains(.,'Categorías')]
    Texto  //input[contains(@id,'busquedaForm:idBusqueda')]  Demo 
    Click  //a[@href='#'][contains(.,'Buscar')]
    Scroll  0  450

Catalogos Organizaciones
    Click  //a[contains(@id,'j_idt9:linkCatalogos')]
    Scroll  0  150
    Click  //a[@href='#'][contains(.,'Organizaciones')]
    Scroll  0  250
    Click  //a[@href='#'][contains(.,'Agregar organización')]
    Scroll  0  250
    SLL     //select[contains(@name,'busquedaAltaForm:idDependencia')]   Demo dos
    Texto  //input[contains(@id,'busquedaAltaForm:idOrganizacion')]  ${Organizacion}
    Texto  //input[@id='busquedaAltaForm:idSiglas']  Org
    Click  //a[@href='#'][contains(.,'Guardar')]
    Dormir  1
    Click  //a[contains(@id,'j_idt9:linkCatalogos')]
    Scroll  0  150
    Click  //a[@href='#'][contains(.,'Organizaciones')]
    Scroll  0  300
    SLL     //select[@name='busquedaForm:idDependenciaS']   Demo dos
    Click  //a[@href='#'][contains(.,'Buscar')]
    Scroll  0  400
    Resultado  .5  ${dir}/Organización.png   Se muestra la Organización

Catalogos Representantes
    Click  //a[contains(@id,'j_idt9:linkCatalogos')]
    Scroll  0  150
    Click  //a[@href='#'][contains(.,'Representantes')]
    Click  //a[contains(@id,'idt59:botonAgregar')][@href='#'][contains(.,'Agregar Representantes')]
    Scroll  0  250
    SLL     //select[contains(@name,'formAltaRepresentante:idDependenciaAlta')]     Demo dos
    Click   //*[@id="formAltaRepresentante:idOrganizacionAlta"]/option[2]
    Texto  //input[contains(@id,'formAltaRepresentante:nombreRepresentante')]  ${nombre}
    Texto  //input[contains(@id,'formAltaRepresentante:apellidoPRepresentante')]  ${Apellido}
    Texto  //input[contains(@id,'formAltaRepresentante:apellidoMRepresentante')]  ${Nieto}
    Click    //a[contains(@id,'formAltaRepresentante:idEditar')]
    Texto  //input[@id='formAltaRepresentante:idCargo']  ${cargo}
    Click  //a[contains(@id,'formAltaRepresentante:idBotonAceptar')]
    Scroll  0  600
    Click  //a[contains(@id,'formAltaRepresentante:botonGuardar')]
    Dormir  1
    Click  //a[contains(@id,'j_idt9:linkCatalogos')]
    Scroll  0  150
    Click  //a[@href='#'][contains(.,'Representantes')]
    Texto  //input[contains(@id,'busquedaForm:idBusqueda')]  Rodrigo 
    Scroll  0  300
    Dormir  1
    Click  //a[@href='#'][contains(.,'Buscar')]
    Scroll  0  600
    Dormir  1
    Resultado  .5  ${dir}/Representante.png   Se muestra el Representante


    


    














Agregar
    Click  //a[contains(@id,'idt9:linkAgregar')][@href='#'][contains(.,'Agregar')]
    Scroll  0  200
    SLL  //select[@id='busquedaAltaForm:idSlcTipoEvento']  Actividad
    SLL  //select[contains(@id,'busquedaAltaForm:idSlcEstatus')]  En Proceso
    Texto  //input[@id='busquedaAltaForm:idInputTitulo']  Demo del primer Evento
    Click   //input[@id='busquedaAltaForm:idInputFecha']
    Click   (//a[@href='#'])[17]
    Click   (//input[contains(@type,'text')])[4]
    Click  //div[@class='Hunter-hour-name'][contains(.,'12')]
    Click  //li[@class='Hunter-minute'][contains(.,'30')]
    Resultado  .5  ${dir}/Evento.png   Datos del evento.
    Scroll  0  400
    Texto   //div[contains(@id,'textBox')]  Carga de la Información del primer evento de prueba.
    Obtener Text  //div[contains(@id,'textBox')]
    Dormir  1
    Click  (//button[contains(@type,'button')])[3]
    SLL  //select[contains(@id,'busquedaAltaForm:idDependencia')]   ALTAS

    






  
    
    

