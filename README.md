# Actividad DAD 05-05
###  Alumno: Lautaro Rivieri

**Del repositorio [docker tutorial](https://github.com/joseluisgs/docker-tutorial/tree/master) implementar:**

>[!IMPORTANT]
> Siempre antes de ejecutar cualquier comando, desplazarse a la carpeta específica con `cd ./ejemplos/ejem_numero`

### ejem01:
**1.** Editar dentro del contenedor de Docker
- Instalar un editor de texto como Vim o Nano
- Para instalar en linux un programa se debe actualizar el listado de repositorios de APT
- Luego instalar Vim
- Es probable que se deba corregir el Dockerfile, pegar el error en un AI, por ej. Chatgpt.
- Editar el archivo index.html con Vi desde la terminal del docker ejecutando: `vi index.html`
- Poner su nombre, fecha y materia. Para editar presionar por primera vez la letra `i`. Para guardar presionar `ESC`, luego `:`, luego `wq`.
- Hacer captura de pantalla y pega en el Readme del github q creen para éste proyecto.

---
1. Construcción de la imagen y contenedor
    ``` docker
    docker build -t ejem01 .
    docker run -dit --name ejem01 -p 5555:80 --mount type=bind,source="$PWD/src",target=/var/www/html ejem01
    ```
    ![docker build y run](/images/01-image1.png)

2. Actualizar el listado de repositorios de linux e instalar Vim
    ```
    apt-get update
    apt-get install -y vim
    ```
    ![actualizar e instalar con apt-get](/images/01-image2.png)

3. Editar el archivo `index.html` con Vi desde la terminal de docker
    ```
    vi index.html
    ```
    ![editar index.html](/images/01-image3.png)


**2.** Editar desde VS Code en el contenedor de Docker
- Instalar en VS Code la extensión Remote Explorer
- Conectar a Docker y buscar el contenedor
- Como no se puede conectar por error en GLIBC por la versión de `php:7.0`, actualizar a `php:8.2`
- Relanzar la imagen de docker

---
1. Editar el html desde VSCode con Remote Explorer
    ![editar desde VS Code](/images/01-image4.png)

>[!TIP]
>El archivo `index.html` a modificar se encuentra en `/var/www/html`, aunque resulta lógico al revisar el `run.sh`


### ejem02
- `run.sh` es un archivo para ejecutar en una terminal de linux sh o bash
- Interpretar los comandos en run.sh
- Ejecutar manualmente en la terminal de VS Code
- Subir captura de pantalla del despliegue de docker

---
1. Modificamos el archivo agregando un doble slash en `//var/` para que git bash no la convierta en una ruta de windows por defecto.

    ![ejecución del ejem02](/images/02-image1.png)

    ![ejecución en docker del ejem02](/images/02-image2.png)

### ejem03
- Correr el script `run.sh`
- Evaluar inconvenientes de correr scripts de S.O. (Ejemplo: portabilidad)

---
1. Al ejecutar el script creamos una red con dos contenedores que se conectan por la red interna creada.

    ![ejecución del script ejem03](/images/03-image1.png)

    ![ejecución del ejem03](/images/03-image2.png)

2. Inconvenientes:
- Poca portabilidad: Dependen del sistema (Linux vs Windows), sintaxis, rutas y comandos diferentes; fallan al cambiar de SO.

- No son idempotentes: Al repetirlos, fallan si ya existe un recurso (carpeta, red, contenedor) y dejan el sistema en estado inconsistente.

- Manejo de errores deficiente: Siguen ejecutándose aunque falle un paso, generando errores difíciles de entender y sistemas rotos.

- Seguridad riesgosa: Requieren permisos elevados (root/admin), montan directorios del host (bind mount) y pueden exponer contraseñas o modificar archivos del anfitrión.

- Dependencias externas: Asumen herramientas instaladas (Docker, Bash, curl, etc.) sin validar; fallan si no están.

- Mantenimiento tedioso: Código espagueti, difícil de depurar; en equipos mixtos toca mantener múltiples scripts (.sh, .ps1, .bat).

>[!TIP]
>La industria ha migrado a herramientas declarativas como Docker Compose, ya que es portable, idempotente y maneja todo el ciclo de vida con un solo comando. Además de que no requiere lógica imperativa ni manejo manual de errores.

---
# Actividad DAD 12-05
### ejem04
- Ejecutar el docker-compose:

---
1. Ejecución:
    ``` bash
    docker-compose up -d
    ```

    ![ejecución del docker-compose ejem04](/images/04-image1.png)

    ![ejecución del ejem04](/images/04-image2.png)


### ejem07 
- Ejecutar el docker-compose

>[!IMPORTANT]
>Recordar desplazarde por la estructura de carpetas: `cd ./ejemplos/ejem07/docker/phpmyadmin`

--- 
1. Ejecución con:
    ``` bash
    docker-compose up -d
    ```

    ![ejecución docker-compose ejem07](/images/07-Image1.png)

    ![ejecución docker-compose ejem07](/images/07-image2.png)

    ![ejecución docker-compose, con contenedores ejem07](/images/7-image3.png)

2. Ingresar a php

    ![Creación de la tabla - ejem07](/images/7-image4.png)

3. Crear la tabla que está en `mariadb/sql/init-db.sql`
    ![Creación de la tabla - ejem07](/images/7-image5.png)

    ![Tabla - ejem07](/images/7-image6.png)

    ![Conexión frontend con db - ejem07](/images/7-image7.png)


### [**Subir ⬆**](#actividad-dad-05-05)
