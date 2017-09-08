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

Feature: Como cliente deseo visualizar las películas que actualmente se encuentran en exhibición
          ya que así podré escoger la película adecuada a mi gusto y tiempo.

Scenario:
Given -->
  And -->
When --->
Then --->
When --->
Then --->
When --->
Then --->

Feature: Como cliente deseo visualizar los cines y funciones de una película determinada
          ya que podré escoger el cine y función más cercano.

Scenario:
Given -->
  And -->
When --->
Then --->
When --->
Then --->
When --->
Then --->

Feature: Como cliente deseo visualizar los datos de la función a comprar entradas
          ya que así puedo saber más sobre la sinópsis de la película, tiempo o reestricciones.

Scenario:
Given -->
  And -->
When --->
Then --->
When --->
Then --->
When --->
Then --->

Feature: Como encargado de CineManzana deseo registrar nuevas cadenas de cine, así como sus cines
          ya que de esta forma amplio la cartera de funciones para los clientes.

Scenario:
Given -->
  And -->
When --->
Then --->
When --->
Then --->
When --->
Then --->
