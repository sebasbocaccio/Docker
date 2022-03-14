Para este ejercicio necesitas docker-compose, si estas en Windows o Mac ya lo tienes instalado, si estas en linux debes instalarlo aparte.Crea un archivo llamado "docker-compose-jobvacancy.yml" y pon dentro el contenido de este link: https://gitlab.com/-/snippets/2088421/raw/master/docker-compose-jobvacancy.yml.
A continuación ejecuta este comando en una terminal: docker-compose -f docker-compose-jobvacancy.yml up.
Espera unos minutos hasta que dejen de aparecer mensaje en la terminal. Luego navega localhost:3000 para verificar que la aplicación levanto correctamente.
Finalmente contesta:

-    ¿Cuántos contenedores se están ejecutando? (pueden verlo en el archivo docker-compose-jobvacancy.yml y también ejecutando docker ps)
    
    Segun entiendo un servicio es la configuracion de un futuro contenedor. Mirando el archivo yml veo que hay 2 servicios db y web por lo que concluyo que va a haber 2 contenedores corriendo (luego corri docker ps para comprobar esta hipotesis). 

* ¿Cuales son las imágenes en las que están basados los mencionados contenedores?
  
    
        nicopaez/jobvacancy-ruby:1.3.0
        postgres
    
    
* ¿Puedes leer el docker-compose-jobvacancy.yml y describir lo que hace cada una de sus lineas?

        version: '2' // Declara la version de docker-compose
            services: // Empieza declaracion de servicios
                web: // Declara nuevo servicio de nombre web
                    image: nicopaez/jobvacancy-ruby:1.3.0 // Setea imagen de partida 
                    links: // Declara dependencia y permite comunicacion entre servicios
                      - db // Linkea a servicio db
                    ports: // Mapea los puertos que van a ser usados 
                      - "3000:3000" 
                    environment: // Declara variables de ambiente
                        PORT: "3000"
                        RACK_ENV: "production"
                        DATABASE_URL: "postgres://postgres:Passw0rd!@db:5432/postgres"
                    depends_on: // Declara las dependencias, las cuales imponen un orden, a la hora de levantar el servicio (Creo que esto no seria necesario porque links ya hace esto)
                      -  db
                db: // Declara nuevo servicio de nombre db 
                    image: postgres // Setea imagen
                    environment: // Setea variables de ambiente.
                    POSTGRES_PASSWORD: Passw0rd!


* Dado que cada contenedor corre en forma aislada ¿Cómo es posible que esos contenedores se vean entre sí?
  
        Esto es posible gracias a que el servicio de web esta linkeado a el de db. Igualmente creo que no es necesario setearlo ya que la documentacion dice ' by default, any service can reach any other service at that service’s name.' Por lo cual esta declaracion esta siendo redundante.
        
        https://docs.docker.com/compose/networking/#links