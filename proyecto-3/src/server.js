const dotenv = require('dotenv');
dotenv.config();
const express = require('express');
const { Op } = require('sequelize');
const sequelize = require('./conection/connection');
const Categoria = require('./models/categoria');
const Vtrailerflix = require('./models/vtrailerflix');

const server = express();

// Middlewares
server.use(express.json());

// Se obtiene todas las categorias disponibles
server.get('/categorias', async (req, res) => {
    try {
        const categoria = await Categoria.findAll();
        if (!categoria.length) {
            res.status(404).send({ message: `No hay categorias registradas.` });
            return;
        }

        res.status(200).send(categoria);
    } catch (error) {
        console.log(error);
        res.status(500).send({ message: `Se ha generado un error en el servidor` });
    }
});

// Se obtiene el catalogo completo de la manera que se ve en trailerflix.json
server.get('/catalogo', async (req, res) => {
    try {
        const view = await Vtrailerflix.findAll();
        if (!view.length) {
            res.status(404).send({ message: `La vista del catalogo no tiene registros.` });
            return;
        }

        res.status(200).send(view);
    } catch (error) {
        console.log(error);
        res.status(500).send({ message: `Se ha generado un error en el servidor` });
    }
});

// Se obtiene la pelicula o serie mediante su id
server.get('/catalogo/:id', async (req, res) => {
    const ID = Number(req.params.id);
    if (Number.isNaN(Number(ID))) {
        res.status(400).send({ message: `El ID tiene que ser un número.` });
        return;
    }

    try {
        const catalogo = await Vtrailerflix.findByPk(ID);

        if (!catalogo) {
            res.status(404).send({ message: `El ID no corresponde a un contenido registrado.` });
            return;
        }

        res.status(200).send(catalogo);
    } catch (error) {
        console.log(error);
        res.status(500).send({ message: `Se ha generado un error en el servidor` });
    }
});

// Se obtiene la/s pelicula/s o serie/s mediante su nombre o parte de él
server.get('/catalogo/nombre/:nombre', async (req, res) => {
    const {nombre} = req.params;

    let options = { where: { titulo: { [Op.like]: `%${nombre}%` } } };

    try {
        const catalogonombre = await Vtrailerflix.findAll(options);
        if (!catalogonombre.length) {
            res.status(404).send({ message: `No existen nombres registradas o el nombre pasado es inexistente.` });
            return;
        }

        res.status(200).send(catalogonombre);
    } catch (error) {
        console.log(error);
        res.status(500).send({ message: `Se ha generado un error en el servidor` });
    }
});

// Se obtiene la/s pelicula o serie/s mediante su genero
server.get('/catalogo/genero/:genero', async (req, res) => {
    const {genero} = req.params;

    let options = {where: { genero: { [Op.like]: `%${genero}%` } } };

    try {
        const catalogogenero = await Vtrailerflix.findAll(options);
        if (!catalogogenero.length) {
            res.status(404).send({ message: `No existen generos registradas o el genero pasado es inexistente.` });
            return;
        }

        res.status(200).send(catalogogenero);
    } catch (error) {
        console.log(error);
        res.status(500).send({ message: `Se ha generado un error en el servidor` });
    }
});

// Se obtiene la/s pelicula/s o serie/s mediante su categoria
server.get('/catalogo/categoria/:categoria', async (req, res) => {
    const {categoria} = req.params;

    let options = { where: { categoria: { [Op.like]: `%${categoria}%` } } };

    try {
        const catalogocategoria = await Vtrailerflix.findAll(options);
        if (!catalogocategoria.length) {
            res.status(404).send({ message: `No existen categorias registradas o la categoria pasada es inexistente.` });
            return;
        }

        res.status(200).send(catalogocategoria);
    } catch (error) {
        console.log(error);
        res.status(500).send({ message: `Se ha generado un error en el servidor` });
    }
});

// Se obtiene la/s pelicula/s o serie/s mediante un actor o actriz
server.get('/catalogo/reparto/:reparto', async (req, res) => {
    const actor = req.params.reparto;

    let options = { where: { reparto: { [Op.like]: `%${actor}%` } } };

    try {
        const catalogoreparto = await Vtrailerflix.findAll(options);

        if (!catalogoreparto.length) {
            res.status(404).send({ message: `No existen Actor/Actriz registradas o el Actor/Actriz pasado es inexistente.` });
            return;
        }

        res.status(200).send(catalogoreparto);
    } catch (error) {
        console.log(error);
        res.status(500).send({ message: `Se ha generado un error en el servidor` });
    }
});

// Control de rutas inexistentes
server.use('*', (req, res) => {
    res.status(404).send({error: `La URL indicada no existe en este servidor.`});
});

// Método oyente de solicitudes
sequelize.authenticate().then(() => {
    sequelize.sync({force: false}).then(() => {
        server.listen(process.env.PORT, process.env.HOST, () => {
            console.log(`El servidor está escuchando en : http://${process.env.HOST}:${process.env.PORT}`);
        });
    }).catch(() => {
        console.log('Hubo un problema con la sincronización de los modelos.');
    });
}).catch(() => {
    console.log('Hubo un problema con la conexión a la base de datos.');
});