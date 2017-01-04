# jboss-fuse-docker

Dockerfile para generar una imagen de JBoss Fuse.

En este ejemplo se utiliza la versión 6.2.0 pero puede modificarse para instalar otra versión, de hecho la versión a instalarse se descomprime dentro del contenedor. Se debe disponer de un .zip para que el script lo ubique y lo pueda copiar dentro del contenedor.

En este repositorio no se incluye ninguna distribución por motivos de tamaño.

## Modo de uso

Primero de debe hacer el build de la imagen:

    docker build --tag jboss-fuse .

Luego con el siguiente comando se levanta el contenedor:

    docker run -d -p 8181:8181 -p 8101:8101 -v /home/lberetta/docker/data:/opt/jboss/fuse/data jboss-fuse

Se debe notar que se exponen los puertos 8181 (Hawtio) y 8101 (SSH) como también se monta el volumen data para leer logs.
