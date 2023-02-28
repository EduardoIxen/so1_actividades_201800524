# Actividad 3

En esta actividad se corrigió el problema en el frontend donde al acceder a una ruta especifica, nos aparecía el error 404 y que no se encontraba la pagina a la que se quería acceder.

Para solucionar esto, se agregó ciertas configuraciones a NGNIX para asegurarnos de que se estuviera redirigiendo correctamente las solicitudes a la ruta específica. 

Esas configuraciones se guardaron en el archivo **configuraciones.conf** que luego fueron copiadas por medio del Dockerfile a la ruta donde NGNIX mantiene sus configuraciones.

El el archivo ngnix.Dockerfile se agregó la siguiente linea de codigo para agregar las configuraciones:

```
COPY configuraciones.conf /etc/nginx/conf.d/default.conf
```

Y por ultimo se volvió a construir la imagen del contenedor para aplicar los cambios. Al tener la imagen construida ya era posible ejecutarla con el comando **run**.