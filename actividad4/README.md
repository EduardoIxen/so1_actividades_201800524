# Actividad 4

## Crear systemd

- Abre una terminal y asegúrate de que estás en la ubicación de inicio de sesión del usuario, es decir, /home/usuario.

- Crea el archivo de servicio en la ubicación /etc/systemd/system/ con los permisos de superusuario. Puedes utilizar el editor de texto de tu preferencia para crear el archivo.

```
sudo vim /etc/systemd/system/saludo_201800524.service
```

- Añade el siguiente contenido al archivo saludo_201800524.service. Este archivo describe el servicio de systemd y cómo ejecutar el script.

```
[Unit]
Description=Actividad 4

[Service]
ExecStart=/home/actividad4.sh
Restart=always
IgnoreSIGPIPE=no

[Install]
Alias=saludo.service

```

- Una vez guardado el archivo, deberás recargar la configuración de systemd para que pueda detectar el nuevo archivo de servicio:

```
sudo systemctl daemon-reload
```