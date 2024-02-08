const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const V_trailerflix = sequelize.define('V_trailerflix', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    poster: {
        type: DataTypes.STRING,
        allowNull: true,
        get() {
            const rawValue = this.getDataValue('poster');
            return process.env.POSTER_URL + rawValue;
        }
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    categoria: {
        type: DataTypes.STRING,
        allowNull: false
    },
    genero: {
        type: DataTypes.STRING,
        allowNull: false
    },
    resumen: {
        type: DataTypes.STRING,
        allowNull: true
    },
    temporadas: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    reparto: {
        type: DataTypes.STRING,
        allowNull: false
    },
    trailer: {
        type: DataTypes.STRING,
        allowNull: true
    }
}, {
    tableName: 'V_trailerflix',
    timestamps: false
});

module.exports = V_trailerflix;
