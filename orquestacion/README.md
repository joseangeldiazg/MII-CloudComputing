# Directorio para ficheros de orquestación de la aplicación


La orquestacion se ha llevado a cabo con estas premisas iniciales:

1. Sistema operativo Mac OS X Sierra.
2. Versión de Vagrant: 1.9.1

### Pasos para la orquestación 

El primer paso es instalar el plugin de Vagrant para AWS. Para ello usaremos el siguiente comando:

	vagrant plugin install vagrant-aws

Tras este momento debemos añadir a Vagrant un box sencillo creado especialmente para la orquestación de máquinas virtuales en este sistema:

	vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box

Tras esto debemos obtener los siguientes datos de nuestro panel de Amazon. Para ello priemero deberemos crear un grupo de seguridad con los puertos necesarios (http, https, ssh) y que herede del VPC default.

- AWS access key
- AWS secret key
- SSH keypair name
- SSH private key file (.pem extension)


Tras esto, para evitar problemas de seguridad en el fichero ``.profiles`` de nuestro sistema incluiremos las citadas variables como variables de entorno como sigue, así además de evitar que estas claves sean visibles las tendremos disponibles entre inicio e inicio de sesión.

```
export AWS_KEY='your-key'
export AWS_SECRET='your-secret'
export AWS_KEYNAME='your-keyname'
export AWS_KEYPATH='your-keypath'
```

Obtenemos por tanto el fichero Vagrantfile que podemos encontrar en [este repositorio](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/orquestacion/Vagrantfile).

Para ejecutar la orquestación tan solo deberemos ejecutar el comando ``vagrant up`` que creará nuestras máquinas virtuales y las provisionará para poder alojar nuestra aplicación.

Una vez finalizado, podremos acceder a nuestras máquinas virtuales facilmente con el comando ``vagrant ssh nombre``donde ``nombre``en nuestro caso puede tener tres valores, _tareas, roles o persistencia_.