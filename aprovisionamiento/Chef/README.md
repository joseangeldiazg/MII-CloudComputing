#Aprovisionar instancia usando Chef

1. Lo primero es instalar chef en la máquina. Para ello conectamos por ssh y ejecutamos el comando: ```curl -L https://www.opscode.com/chef/install.sh | sudo bash ```
 

2. Tras este paso si no lo tenemos instalado a priori instalamos git con el gestor de paquetes que usemos normalmente. 

3. Clonamos el directorio desde github. Para ello utilizamos el comando: ``git clone https://github.com/joseangeldiazg/MII-CloudComputing.git ``

4. Tras esto nos situamos dentro del directorio donde encontramos el fichero ``solo.rb`` y ejecutamos: `` sudo chef-solo -c solo.rb``.

5. Tras esto el resultado será parecido a lo siguiente:



## 2- Consideraciones

 
1. El sistema operativo del workstation es Mac OSX. 

2. La máquina virtual usada en la instacia es Ubuntu 14.04