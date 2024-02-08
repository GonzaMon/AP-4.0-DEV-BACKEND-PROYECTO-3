# Proyecto Integral N°3

El presente documento, es el **Proyecto Integral N°3** de ***Argentina Program 4.0***. Esta es una pequeña solución informática que sirve para devolver datos de un catalogo de la pagina de entrenimiento audiovisual: TRAILERFLIX .
La misma, fue diseñada y construida sobre una arquitectura API RESTful, la cual está desarrollada bajo las restricciones y recomendaciones de REST, además, implementa buenas prácticas de programación.

#### Especificaciones
- Servidor: http://localhost:8080
- Autor: Montenegro Gonzalo

#### Requerimientos
- Node.js v18.16.0
- Mysql2 v3.6.1
- GIT v2.40.1
- IDE - Visual Studio Code v1.8.2

#### Estructura de directorios
``` tree
    ├── node_modules
    ├── others
    │   └── trailerflix.json
    │   └── trailerflix.png
    │   └── trailerflix.sql
    ├── public
    ├── src
    │   ├── conection
    │   │   └── connection.js
    │   ├── models
    │   │   └── catalogo.js 
    │   │   └── categoria.js
    │   │   └── vtrailerflix.js
    │   └── server.js
    ├── tests
    │   └── proyecto2.test.js
    ├── .env
    ├── .env.dist
    ├── .eslintrc.json
    ├── .gitignore
    ├── connection_db.js
    ├── package-lock.json
    ├── package.json
    └── README.md
```

---
### CONFIGURACION DE ENTORNO
  - #### VARIABLES DE ENTORNO
    Se debe hacer una copia del archivo **.env.dist** y renombrarlo como **.env**. Con respecto a su contenido, es necesario asignar los valores a correspondientes a las variables:
    ``` js
        SERVER_PORT=8080
        SERVER_HOST=localhost

        DATABASE_URL=tu-cadena-de-conexion
        DATABASE_NAME=muebleria

        POSTER_URL=http://localhost:8080/public
    ```

 - #### TESTS
    Hasta el momento, esta version no tiene suite de tests.

 - #### ERRORES & FORMATOS
    La comprobación de errores y formatos se ejecuta por medio del comando ***npm run eslint***. se hace por medio de Eslint. Para visualizar los errores en tiempo de escritura, se debe tener instalada la extensión de **Eslint** en Visual Studio Code.
    
---
### MÓDULO DE CATALOGO TRAILERFLIX

Este módulo permite la visualizacion de contenidos del catalogo. El mismo, ofrece leer el registro de trailerflix. Además, permite visualizar filtrados por diferentes criterios de búsqueda.

#### Métodos HTTP
| Tipo | URI | Descripción |
|------|-----|-------------|
| GET | http://localhost:8080/categorias | Obtiene todos los registros de categorias |
| GET | http://localhost:8080/catalogo/ |Obtiene todos los registros del catalogo |
| GET | http://localhost:8080/catalogo/1 | Obtiene un registro en específico |
| GET | http://localhost:8080/catalogo/nombre/guason |Obtiene un registro o varios del titulo especifico|
| GET | http://localhost:8080/catalogo/genero/accion | Obtiene un registro o varios del genero especifico |
| GET | http://localhost:8080/catalogo/categoria/serie | Obtiene un registro o varios del tipo de categoria especifica |
| GET | http://localhost:8080/catalogo/categoria/reparto/matt%20damon | Obtiene un registro o varios del nombre de actriz/actor especifico |
