# Infraestructura de Microservicios completa

En este directorio dentro del repositorio encontramos todo lo necesario para provisionar una arquitectura de micro-servicios basada en contenedores Docker y máquinas virtuales de Amazon Web Services. La orquestacion y provisionamiento se haran con Vagrant y Ansible y tambien de explicará el uso de ciertos SaaS para deslocalizar ciertas tareas críticas de la aplicación. 



## Contenedores


Para alojar nuestros servicios crearemos los contenedores en DockerHub. Para ello, debemos crear repositorios automáticos enlazados a git hub tras lo cual indicaremos manualmente la direccción de los dockerfile ya que estos no estan en la raiz del repositorio. 

Los Dockerfile creados, dado que la aplicacion se basará en la pila MEAN usan una imagen de Docker con nodeJS y Alpine haciendo así que los contenedores para nuestros microservicios sean ligeros. 

- [Docker  file para ms Tareas](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/microservices-iv/dockerfileTareas)
- [Docker file para ms Roles](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/microservices-iv/dockerfileRoles)


## Orquestación de máquinas 

Usaremos Vagrant para crear en AWS las máquinas virtuales que usaremos para desplegar nuestros microservicios. Estas máquinas virtuales deberan tener Docker instalado para poder trabajar bien con los contenedores que orquestaremos en los próximos pasos. 

Las instrucciones detalladas de como orquestar las máquinas podemos encontrarlas en el [siguiente fichero](https://github.com/joseangeldiazg/MII-CloudComputing/tree/master/orquestacion). 


El fichero relativo a la orquestación de las máquinas virtuales es el siguiente [Vagrantfile](). Notar como en provisionamiento hacemos referencia a los ficheros Playbook de Ansible que veremos en el punto siguiente, es decir, debemos crear estos para que nuestra orquestación funcione correctamente. 


## Provisión de máquinas 

En este caso la provisión de las máquinas cambiará a lo visto anteriormente ya que tenemos contenedores correctamente provisionados lo que haremos con nuestros PlayBooks de Ansible será instalar Docker en las máquinas virtuales, obtener de DockerHub nuestros contenedores y tras esto ponerlos en producción en las máquinas. 

Podemos encontrar un pequeño tutorial sobre como utilizar Ansible en [este enlace](https://github.com/joseangeldiazg/MII-CloudComputing/tree/master/aprovisionamiento/Ansible). 

Dado que orquestaremos dos microservicios, usaremos dos PlayBooks de Ansible. 

- [Playbook para Tareas]()
- [Playbook para Roles]()


## Base de datos

Usaremos el SaS [mLab](www.mlab.com) para extraer el servicio de la base de datos de nuestra aplicación. Para ello necesitamos crear cuenta en dicho portal y de manera gratuita obtenemos una base de datos MongoDB (v3.2.11) a la que podremos conectar fácilmente y la cual está separada de nuestro despliegue final. 


