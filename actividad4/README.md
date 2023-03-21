# Actividad 4

## Crear Servicio

- Abrir una terminal y asegúrate de que estás en la ubicación de inicio de sesión del usuario, es decir, /home/

- Crear el archivo de servicio en la ubicación /etc/systemd/system/ con los permisos de superusuario. Puedes utilizar el editor de texto de tu preferencia para crear el archivo.

```
sudo vim /etc/systemd/system/saludo_201800524.service
```

- Añade el siguiente contenido al archivo saludo_201800524.service. Este archivo describe el servicio de systemd y cómo ejecutar el script.

```bash
[Unit]
Description=Actividad 4

[Service]
ExecStart=/home/actividad4.sh
Restart=always

[Install]
Alias=saludo.service

```

- Una vez guardado el archivo, deberás recargar la configuración de systemd para que pueda detectar el nuevo archivo de servicio:

```bash
sudo systemctl daemon-reload
```

- Luego, crea el archivo de script en la ubicación /home/actividad4.sh con los permisos de usuario.

```bash
vim /home/actividad4.sh
```

- Añade el siguiente contenido al archivo actividad4.sh. Este script imprimirá un saludo y la fecha actual en un ciclo infinito.

```bash
#!/usr/bin/env bash

echo "¡Hola!"
echo "Fecha: $(date +"%d-%m-%Y")"
```

- Una vez que hayas guardado el archivo, dale permisos de ejecución:
```bash
chmod +x /home/actividad4.sh
```

- Iniciar el servicio con: 
```bash
sudo systemctl start saludo_201800524.service
```
