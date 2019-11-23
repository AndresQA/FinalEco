# FinalEco

El proyecto trata acerca de un aplicativo multinodos en donde los estudiantes de la universidad ICESI puedan solicitar o reservar elementos como computadores portátiles, tablets, Macbooks y audifonos. Además que, el usuario pueda obtener una retroalimentación del estado de su reserva y que se implemente un función para poder ampliar la reserva del equipo en préstamo, cabe mencionar que esta ampliación de tiempo en la reserva está sujeta a unos factores para ser aprobada que se explicarán más adelante. La aplicación abarca tanto usuarios estudiantes, como los operarios de Syri que son quienes brindan este servicio de préstamo de equipos. Los nodos están conectados a la base de datos de Firebase para la correcta administración de las solicitudes.

Los nodos a operar son lo siguientes: 

<strong>Plataforma móvil:</strong>

 <p align="center">
<img src="/framemovil.png"/ width="100">
  </p>

Esta plataforma es utilizada por parte de los estudiantes que quieren reservar los equipos que ofrece Syri, esta cuenta con una pantalla de login para el solo acceso de estudiantes de la universidad y una pantalla donde se muestre que tipo de equipo quiere solicitar y el tiempo que tiene este para ser entregado una vez aprobada la solicitud y retirado dicho elemento. La opcion de ampliacion de tiempo es mostrada cuando la solicitud del préstamo haya sido previamente aprobada por el operario de Syri.

<strong>Plataforma web:</strong>
 <p align="center">
<img src="/frameweb.png"/>
  </p>

Esta plataforma es utilizada por los operarios de Syri para gestionar las solicitudes de préstamo de equipos como de ampliación de tiempo. Todas las solicitudes del nodo o aplicación móvil de android se visualizan en esta plataforma para ejecutar la respectiva solicitud como aprobar o no el préstamo de equipo y la ampliación de tiempo en los préstamos.


<strong>Indicador en arduino:</strong>

 <p align="center">
<img src="/framearduino.png"/width="200">
  </p>

Este indicador es utilizado por parte del operario de Syri para visualizar las unidades disponibles de cada elemento y así poder determinar si rechazar o aprobar una nueva solicitud. Las unidades disponibles serán visualizadas en una pantalla led en el arduino que estará sincronizado con la base de datos.

<h2>User Flow<h2>
  
<img src="/Frame 1.png"/>
 <p align="center">
 <img src="/problem.jpg"/>
  </p>



<h2>COMUNICACIÓN</h2> 

La información estará alojada en un servidor en tiempo real Firebase, solo se podrá acceder a la base de datos si el usuario está autentificado. Tanto la plataforma web controlada por el facilitador de Syri, como la aplicación Android controlada por el solicitante. Ambos nodos implementan los servicios de Firebase (Autentification y Real Time Database). El tercer nodo de comunicación trabaja con una placa Arduino con el módulo ethernet shield, que estará conectado a la red de internet, y estará leyendo el flujo de datos crudo de la base de datos firebase convertidos en formato json.
La base de datos consistirá en una rama que almacena en listas, ordenadas por un key aleatorio cada solicitud y la información de la misma, tales como el solicitante, el producto, la hora de la solicitud, la carrera del estudiante. La otra rama es una lista de objetos que almacena cada uno de los objetos disponibles para ser prestados, y la cantidad disponible de los mismos.

