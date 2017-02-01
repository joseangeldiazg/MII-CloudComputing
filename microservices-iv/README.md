# Infraestructura de Microservicios completa

En este directorio dentro del repositorio encontramos todo lo necesario para provisionar una arquitectura de micro-servicios basada en contenedores Docker y máquinas virtuales de Amazon Web Services. La orquestacion y provisionamiento se haran con Vagrant y Ansible y tambien de explicará el uso de ciertos SaaS para deslocalizar ciertas tareas críticas de la aplicación. 



## Contenedores


Para alojar nuestros servicios crearemos los contenedores en DockerHub. Para ello, debemos crear repositorios automáticos enlazados a git hub tras lo cual indicaremos manualmente la direccción de los dockerfile ya que estos no estan en la raiz del repositorio. 

Los Dockerfile creados, dado que la aplicacion se basará en la pila MEAN usan una imagen de Docker con nodeJS y Alpine haciendo así que los contenedores para nuestros microservicios sean ligeros. 

- [Docker file para ms Tareas](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/microservices-iv/dockerfileTareas)
- [Docker file para ms Roles](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/microservices-iv/dockerfileRoles)



## Base de datos

Usaremos el SaS [mLab](www.mlab.com) para extraer el servicio de la base de datos de nuestra aplicación. Para ello necesitamos crear cuenta en dicho portal y de manera gratuita obtenemos una base de datos MongoDB (v3.2.11) a la que podremos conectar fácilmente y la cual está separada de nuestro despliegue final. 


