# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Se quiere una nueva funcionalidad mediante la cual, el administrador de la misma pueda crear exámenes para ser completados por los usuarios de la plataforma ya existentes.
Estos exámenes constan de varias preguntas y dichas preguntas pueden ser de diferentes tipos, concretamente nos comunican que les hacen falta 3 tipos:

· Preguntas de texto libre
· Preguntas de selección múltiple (varias respuestas correctas)
· Preguntas de selección única (una respuesta correcta).

Además, las preguntas se podrán marcar como preguntas puntuables o no y en función de si se marca esta opción, el manager podrá definir cuántos puntos vale dicha pregunta.
Además, estos exámenes solo podrán ser completados por los usuarios en las fechas establecidas por el manager.
Las respuestas de los usuarios quedarán almacenadas de manera que el manager podrá ver para cada usuario los exámenes completados, nota obtenida y otras estadísticas.
Necesitamos que se pinte un modelo de datos que nos permita desarrollar esta funcionalidad, también los modelos de Rails y las relaciones que crees que son necesarias para cumplir todos los requerimientos y posibles evolutivos (relaciones entre modelos y validaciones).
En caso de necesitar lógica de código para resolver algún requisito sin definir a nivel de modelo de datos, por favor, describe la solución adjunto al diagrama y razona el por qué.

- rspec
- view components
- bulma
