const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const Catalogo = sequelize.define('Catalogo', {
    idCatalogo: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    resumen: {
        type: DataTypes.STRING,
        allowNull: true
    },
    trailer: {
        type: DataTypes.STRING,
        allowNull: true
    },
    poster: {
        type: DataTypes.STRING,
        allowNull: true
    },
    temporadas: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    idCategoria: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
}, {
    tableName: 'Catalogo',
    timestamps: false
});

module.exports = Catalogo;
