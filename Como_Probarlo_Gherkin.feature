# PARA MEJOR VISUALIZACIÓN, UTILIZAR ATOM Y EL PAQUETE DE ATOM LLAMADO "language-gherkin"

Feature: Como cliente deseo comprar una entrada a una función determinada
          ya que de esta forma podré ahorrar tiempo y ver la película que quiero.

  Scenario: Se compre correctamente las entradas
    Given --> el cliente se encuentra logueado
      And --> NaN
    When ---> el cliente selecciona la película, así como la función, cine, y la cantidad de entradas
    Then ---> el sistema muestra una interfaz para escoger los asientos disponibles
    When ---> el cliente selecciona los asientos disponibles y presiona en el botón "Continuar"
    Then ---> el sistema muestra el formulario de pago con tarjeta
    When ---> el cliente llena los datos de pago y presiona el botón "Pagar"
    Then ---> el sistema verifica los datos y muestra la pantalla de transacción finalizada con el ticket de entrada
    When ---> el cliente decide si imprimir la entrada o enviarla por correo
    Then ---> el sistema descarga un .pdf o envia por correo de acuerdo a su preferencia

  Scenario: El cliente no compra la entrada satisfactoriamente(La cantidad supera los asientos libres de la funcion)
    Given El cliente ha seleccionado una de las peliculas
      And ha seleccionado el cine
      And ha seleccionado la funcion
    When El cliente ingresa la cantidad de entradas
      And ingresa su nombre
      And presiona el boton guardar
    Then El sistema muestra el mensaje: "La cantidad de entradas supera los asientos disponibles de la funcion"

Feature: Como cliente deseo visualizar las películas que actualmente se encuentran en exhibición
          ya que así podré escoger la película adecuada a mi gusto y tiempo.

  Scenario: El cliente puede ver el listado de peliculas
    Given La cartelera ha sido configurada
    When El cliente ingresa a la plataforma
    Then El sistema muestra el listado de peliculas

Feature: Como cliente deseo visualizar los cines y funciones de una película determinada
          ya que podré escoger el cine y función más cercano.

  Scenario: El cliente puede ver los cines y funciones para determinada pelicula
    Given El cliente ha elegido una pelicula de la cartelera
    When El cliente hace click en la pelicula
    Then El sistema muestra un listado de las funciones

Feature: Como cliente deseo visualizar los datos de la función a comprar entradas
          ya que así puedo saber más sobre la sinópsis de la película, tiempo o reestricciones.

  Scenario: El cliente puede ver los datos de la pelicula
   Given: El cliente ha elegido una pelicula de la cartelera
   When El cliente hace click en la pelicula que desea ver
   Then El sistema muestra los datos de la pelicula; como la sinopsis, tiempo y reestricciones
    And muestra el listado de funciones disponibles

Feature: Como encargado de CineManzana deseo registrar nuevas cadenas de cine, así como sus cines
          ya que de esta forma amplio la cartera de funciones para los clientes.

  Scenario: El encargado registra los datos de la cadena satisfactoriamente
    Given: El encargado se ha logueado en la plataforma
    When El encargado ingresa los datos necesarios para el registro
      And hace click en "registrar cadena"
      And los datos ingresados son validos
    Then El sistema muestra el mensaje: "Registrado satisfactoriamente"
      And almacena la informacion de la cadena en la base de datos

    Scenario: El encargado no registra los datos de la cadena(datos invalidos)
      Given: El encargado se ha logueado en la plataforma
      When El encargado ingresa los datos necesarios para el registro
        But uno o mas datos son invalidos
        And hace click en "registrar cadena"
      Then El sistema muestra el mensaje: "Datos invalidos"
