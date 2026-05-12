# Actividad DAD 05-05
###  Alumno: Lautaro Rivieri

**Del repositorio [docker tutorial](https://github.com/joseluisgs/docker-tutorial/tree/master) implementar:**

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

![editar desde VS Code](/images/01-image4.png)


### ejem02
- `run.sh` es un archivo para ejecutar en una terminal de linux sh o bash
- Interpretar los comandos en run.sh
- Ejecutar manualmente en la terminal de VS Code
- Subir captura de pantalla del despliegue de docker

![ejecución del contenedor](/images/02-image3.png)

![ejecución del ejem02](/images/02-image4.png)


>[!TIP]
> No es requisito modificar todas las filas del archivo, con solo agregar un doble slash en `//var/` para que git bash no la convierta en una ruta de windows por defecto es suficiente.

### [**Subir ⬆**](#actividad-dad-05-05)