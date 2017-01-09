FROM ubuntu:14.04
MAINTAINER joseangeldiazg  <joseadiazg02@correo.ugr.es>


#Update 

RUN apt-get -y update

#Install git

RUN apt-get install -y git


#Install packages

RUN apt-get -y install mongodb

RUN sudo apt-get -y install nodejs

RUN sudo apt-get -y install npm

RUN sudo apt-get -y install mongodb-server

RUN  npm install express
