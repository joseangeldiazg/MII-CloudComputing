
# ContentTaskMS

Proyecto de prácticas para la asignatura Cloud Computing de primer curso del master profesional en ingeniería informática de la UGR.

## Problema y solución propuesta

### Problema

Controlar un sistema CMS como por ejemplo Wordpress donde colaboran muchas personas, como por ejemplo en un magazine online, puede ser una ardua labor a la hora de la planificación y gestión de tareas como por ejemplo calendarios de publicación, eventos relevantes, o las fechas de entrega para diseños gráficos necesarios como por ejemplo para una campaña de publicidad en dicho magazine.

### Solución

Se desarrollará un software capaz de gestionar todas las tareas o al menos las críticas de un magazine online o un sistema de gestión de contenidos donde colaboren muchos usuarios y sea necesaria una organización y control de los hitos y tareas realizadas.

## Tecnologías del proyecto

### Arquitectura

Dado el carácter cloud y la necesidad de un buen escalado de cara al aumento del número de usuarios, se utilizará una arquitectura basada en microservicios.

### Microservicios

Los microservicios a implementar en la primera versión de la aplicación serán los críticos para un equipo de personas que trabajen colaborativamente en un CMS. Por un lado se implementaran un microservicio encargado de la gestión de roles dentro del equipo, a su vez se implementará otro microservicio encargado de la gestión de las tareas e información asociada a estas que pueden tener asignadas las diferentes personas involucradas.

![Arquitectura Microservicios](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/images/microservicios.png "Arquitectura.")

### Back-end

El backend irá implementado sobre node.js, con el microframework Express y bases de datos MongoDB.

### Front-end

En el Front-end usaremos el framework AngularJS, CSS3 con Bootstrap y HTML5.

### Licencia

Licencia [GNU GPL v3](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/LICENSE).


## Provisionamiento 

Para el provisionamiento de la aplicación puede optarse por dos sistemas de aprovisionamiento, Ansible y Chef. Antes de comenzar con el provisinamiento, debemos tener en cuenta las siguintes consideraciones:

1. La máquina virtual usada es Ubuntu 14.04 ofrecida por AWS. 
2. El sistema operativo nativo usado es Mac OS x por lo que algunos comandos pueden cambiar. 

Para poder provisionar nuestra instacia el primer paso es tener una instancia levantada en algun servicio cloud y configurar las claves de acceso para evitar tener que estar introduciendo continuamente estas. Una vez que la máquina virtual nos responda podremos comenzar con el provisionamiento. 

Para aprovisionar usando Ansible, tenemos los pasos detallados [aquí](https://github.com/joseangeldiazg/MII-CloudComputing/tree/master/aprovisionamiento/Ansible). 

Si por el contrario preferimos usar Chef, podemos encontrar la receta y los pasos para ejecutarla [aquí](https://github.com/joseangeldiazg/MII-CloudComputing/tree/master/aprovisionamiento/Chef). 

## Orquestación 

Para la orquestación de las máquinas virtuales que acogeran los microservicios detallados anteriormente usaremos Vagrant. Los pasos necesarios para realizarla estan detallados [aqui](https://github.com/joseangeldiazg/MII-CloudComputing/tree/master/orquestacion/README.md)

## Contenedores

Se han usado contenedores Docker siguiendo las [siguientes instrucciones](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/contenedores/README.md) y un repositorio en Dockerhub enlazado al repositorio central del proyecto. El Dockerfile utilizado podemos encontrarlo [aquí](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/Dockerfile).



# Despliegue final 

Tras lo visto en los anteriores puntos se ha llevado a cabo el despliegue de la infraestructura virtual necesaria para acoger la arquirectura de microservicios descrita anteriormente. Se han utilizado dos contenedores Docker alojados en DockerHub, estos contenedores eran desplegados en instacias de AWS  usando Vagrant y como provisionador Ansible. 

Se han utilizado algunos SaaS para externalizar de la app servicios tales como la base de datos, los logs y las estadísticas y métricas de funcionamiento. 

[Proceso detallado y ficheros necesarios para el despliegue](https://github.com/joseangeldiazg/MII-CloudComputing/tree/master/microservices-iv)