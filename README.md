# Prueba II de Rails

El objetivo de esta actividad es evaluar la implementación de una relacion N-a-N en Rails a partir de las historias de usuario. Además reforzar conocimientos de patrón de diseño MVC, arquitectura REST y autenticación.
En esta evaluación desarrollarás una ToDo List app para la celebración del 18 de Septiembre. Cada usuario que se registre puede ir marcando las tareas del 18 como completadas.

## Historias de usuario

* Yo como usuario, desde el listado de tareas, debo poder ver todas la tareas para poder ir completando cada una.
* Yo como usuario, desde el listado de tareas, debo poder marcar una tarea como completada para llevar un registro de mis tareas completadas, luego debo ser redirigido al listado de tareas.
* Yo como usuario, desde el listado de tareas, debo poder ingresar al detalle de una tarea para ver los usuarios que la han completado.
* Yo como usuario, desde el listado de tareas, puedo marcar como NO completada una tarea que se encontraba completada para poder corregir una que completé por error, luego debo ser redirigido al listado de tareas.
* Yo como usuario, desde cualquier vista, debo poder ver la barra de navegación con el conteo de tareas completadas para saber cuantas tareas llevo completadas del total.
* Yo como usuario, desde la vista de detalle de una tarea, puedo ver un ranking de los primeros cinco usuarios en completar la tarea junto con su nombre y foto de perfil, además de una lista simple de todos los usuarios que han completado la tarea.

## Requisitos No-funcionales
Dentro de los datos de prueba (seeds.rb) se debe incluir, al menos, 9 tareas con título e imagen (URL).
