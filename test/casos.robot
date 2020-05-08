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
    SLL     //select[contains(@name,'busquedaAltaForm:idDependencia')]   ${categoria}
    Texto  //input[contains(@id,'busquedaAltaForm:idOrganizacion')]  ${Organizacion}
    Texto  //input[@id='busquedaAltaForm:idSiglas']  Org
    Click  //a[@href='#'][contains(.,'Guardar')]
    Dormir  1
    Click  //a[contains(@id,'j_idt9:linkCatalogos')]
    Scroll  0  150
    Click  //a[@href='#'][contains(.,'Organizaciones')]
    Scroll  0  300
    SLL     //select[@name='busquedaForm:idDependenciaS']   ${categoria}
    Click  //a[@href='#'][contains(.,'Buscar')]
    Scroll  0  400
    Resultado  .5  ${dir}/Organización.png   Se muestra la Organización

Catalogos Representantes
    Click  //a[contains(@id,'j_idt9:linkCatalogos')]
    Scroll  0  150
    Click  //a[@href='#'][contains(.,'Representantes')]
    Click  //a[contains(@id,'idt59:botonAgregar')][@href='#'][contains(.,'Agregar Representantes')]
    Scroll  0  250
    SLL     //select[contains(@name,'formAltaRepresentante:idDependenciaAlta')]     ${categoria}
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
    Click    (//a[@href='#'])[24] 
    #Evento Lunes
    Click   (//input[contains(@type,'text')])[4]
    Click  //div[@class='Hunter-hour-name'][contains(.,'12')]
    Click  //li[@class='Hunter-minute'][contains(.,'30')]
    Resultado  .5  ${dir}/Evento.png   Datos del evento.
    Scroll  0  400
    Texto   //div[contains(@id,'textBox')]  Carga de la Información del primer evento de prueba.
    Obtener Text  //div[contains(@id,'textBox')]
    Scroll  0  800
    Dormir  1
    Click  (//button[contains(@type,'button')])[3]
    SLL  //select[contains(@id,'busquedaAltaForm:idDependencia')]   ${categoria}
    Click  //*[@id="busquedaAltaForm:idOrganizacion"]/option[2]    
    Click  (//a[@href='#'][contains(.,'Agregar')])[2]
    Scroll  0  1600
    Dormir  1.5
    Click  //a[@href='#'][contains(.,'Guardar')]
    Dormir  1
    Click  //a[@href='#'][contains(.,'Siguiente')]
    #Segunda Sección
    Click  //*[@id="representantesAltaForm:idSlcRepresentante"]/option[2]
    Click  (//a[@href='#'][contains(.,'Agregar')])[2]
    Scroll  0  500
    Resultado  .5  ${dir}/Participante_agregado.png   Datos del evento.
    Click  //a[@href='#'][contains(.,'Guardar')]
    Dormir  1
    Scroll  0  600
    Click  //a[@href='#'][contains(.,'Siguiente')]
    #tercera sección
    Scroll  0  300
    Click  //a[@href='#'][contains(.,'Nuevo acuerdo')]
    Dormir  1.5
    Texto  //textarea[contains(@id,'agregaAcuerdoForm:idAcuerdo')]  Demo del primer Acuerdo de prueba
    Dormir  1
    Click  //a[@id='agregaAcuerdoForm:idBotonAceptar']
    Scroll  0  500
    Dormir  1.5
    Click  //input[contains(@id,'idt58')][@type='checkbox']
    Dormir  1.5
    #Click  //*[@id="idAcuerdosForm:table-elementos:0:idSlcEstatus"]/option[2]
    #SLI  //select[@id='idAcuerdosForm:table-elementos:0:idSlcEstatus']  2
    Click  //*[@id="idAcuerdosForm:table-elementos:0:idSlcEstatus"]/option[2]
    Dormir  1
    #carga de los archivos
    #Ruta  C:\\Test_ssjae\\test\\Archivos\\Febrero1.pdf
    Click  //a[@href='#'][contains(.,'Adjuntar documento')]
    Dormir  1.5
    Examinar   //input[@id='cargaArchivoForm:file']     C:\\Test_ssjae\\test\\Archivos\\Febrero1.pdf
    Dormir  1
    Click  //a[@href='#'][contains(.,'Cargar')]
    Scroll  0  900
    Dormir  1
    Click  //a[@href='#'][contains(.,'Adjuntar documento')]
    Dormir  1.5
    Examinar   //input[@id='cargaArchivoForm:file']     C:\\Test_ssjae\\test\\Archivos\\Febrero2.pdf
    Dormir  1.5
    Resultado  .5  ${dir}/Carga_pdf.png   Se muestra la Organización
    Click  //a[@href='#'][contains(.,'Cargar')]
    Scroll  0  900
    Dormir  2
    Resultado  .5  ${dir}/Mostrar_pdf_pdf.png   Se muestra la Organización
    Click  //a[@href='#'][contains(.,'Guardar')]
    Dormir  1
    Resultado  .5  ${dir}/Termina_carga.png   Se muestra la Organización
    Dormir  3
    Cerrar


Mostrar evento
    Click  (//a[@href='#'])[1]
    Scroll  0  650
    Dormir  2
    Click   (//span[@class='fc-title'][contains(.,'Demo del primer Evento')])[25]
    Scroll  0  400
    Resultado  .5  ${dir}/Resultado_uno.png    Se muestra Resultado uno
    Dormir  2
    Scroll  0  700
    Resultado  .5  ${dir}/Resultado_dos.png    Se muestra Resultado dos
    Dormir  2
    Scroll  0  900
    Resultado  .5  ${dir}/Resultado_tres.png    Se muestra Resultado tres
    Dormir  2
    Scroll  0  1400
    Resultado  .5  ${dir}/Resultado_cuatro.png    Se muestra Resultado cuatro
    Dormir  2
    Scroll  0  17000
    Resultado  .5  ${dir}/Resultado_cinco.png    Se muestra Resultado cinco
    Dormir  2









    


    




    






  
    
    

