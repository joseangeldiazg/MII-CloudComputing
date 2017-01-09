# Contenedores

El primer paso para comenzar a usar contenedores es hacernos cuenta en [DockerHub](https://hub.docker.com). Una vez dentro, deberemos asociarlo con nuestra cuenta de github. 

Deberemos alojar un fichero [Dockerfile](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/Dockerfile) en nuestro repositorio del proyecto con los comandos necesarios para instalar y configurar los paquetes necesarios para alojar nuestros microservicios, que en nuestro caso son:

- MongoDB
- NodeJS
- npm
- express

Una vez echo esto, haremos un push a nuestro repositiorio en GitHub, previamente enlazado con el repositorio en Dockerhub tras lo cual veremos que todo ha ido correctamente, como muestra la siguiente imagen. 

![Succes en Docker](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/images/docker.png)


Tras esto podemos instalar Docker en nuestra máquina. Estamos usando sistema OSX, por lo que el primer paso es bajar el instalador e instalarlo. 

Abrimos una ventana de terminal *_Docker Quickstart Terminal_* y ejecutamos el comando: 

	docker run hello-world
	
	
![Succes en Docker 2](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/images/docker2.png)
	
Si nos ofrece un resultado de exito, significa que todo esta funcionando correctamente tras lo cual podemos hacer un pull de nuestro repositorio en Dockerhub.

	docker pull joseangeldiazg/mii-cloudcomputing
	
Con lo que todo estará funcionando. 

		



