Dudas:
* Me llamo la atencion que se utiliza en el ejercicio 7 un contenedor para levantar una base  de datos. Lo que me sorprende es que dada la caracteristica de los contenedores de ser altamente descartables ( buscar mejor palabra aca). Cuando un contenedor se cae y se vuelve a levantar el file system del mismo se reinicia y se pierde la informacion.

    Por esta razon, cuales son buenas practicas para manejar bases de datos cuando tenes tu aplicacion levantada en distintos contenedores?

* Supongamos el caso que uno tiene la db corriendo en un contenedor como se maneja el tema de la persistencia en la base de datos? Lo unico que se me ocurre es permitir al contenedor acceder a alguna carpeta donde pueda persistir los datos lo cual no me parece una buena opcion. Existe una mejor solucion?  

* Donde se setea el nombre del contenedor en los servicios? Vi que tenia nombres ejercicio7_web_1,ejercicio7_db_1 y en el yml no vi que se especifique esta informacion.

