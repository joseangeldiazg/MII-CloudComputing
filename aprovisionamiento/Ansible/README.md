#Aprovisionar instancia usando Ansible

##1-Instrucciones

Este repositorio contiene lo necesario para aprovisionar una isntancia cloud con los paquetes necesarios para desarrollar una app usando la MEAN stack. Los pasos a seguir son los siguientes:

1.    El primer paso es modificar el fichero ``ansible_hosts``. Tendremos que añadir la IP de nuestra instacia. 

2. Lo siguiente es modificar el fichero ``ansible.cfg``, donde deberemos especificar la ruta de nuestra clave para acceder por ssh sin tener que andar continuamente añadiendo esta ruta.

3. Tras este paso solo debemos ejecutar el siguiente comando: `` ansible-playbook -i ansible_hosts -b mean.yml ``.
4. Tras este paso veremos el siguiente resultado:


![Resultado Ansible](https://github.com/joseangeldiazg/MII-CloudComputing/blob/master/images/ansible.png "Resultado Ansible.")



## 2- Consideraciones

1. Ambos ficheros se encuentran en el mismo directorio.
 
2. El sistema operativo del workstation es Mac OSX. 

3. La máquina virtual usada en la instacia es Ubuntu 14.04
