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

<img src="/problem.jpg"/>
