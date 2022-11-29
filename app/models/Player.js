import { DataTypes } from "sequelize";
import bcrypt from 'bcrypt';
import db from '../config/db.js';

const Player = db.define('tb_players',
//columnas de las que llevara nuestra tabla
{
    email:{
        type: DataTypes.STRING,
        allowNull: false,
        unique:true
    },
    password:{
        type:DataTypes.STRING,
        allowNull:false
    },
    name:{
        type:DataTypes.STRING,
        allowNull:false
    },
    birthdate:{
        type:DataTypes.DATEONLY,
        allowNull:false
    },
    nickname: {
        type: DataTypes.STRING,
        unique:true
    },
    avatar_url: DataTypes.STRING

},
{
    hooks: { // son como triggers de sequelize
        beforeCreate: async function( player ) {
            const salt = await bcrypt.genSalt( 10 ) //
            player.password = await bcrypt.hash( player.password, salt)
        },
        beforeUpdate: async function( player ) {
            const salt = await bcrypt.genSalt( 10 ) //
            player.password = await bcrypt.hash( player.password, salt)
        }
    }
})// es como si estuvieramos creando las tablas remotamente

Player.prototype.verifyPassword = function ( password ) {
    return bcrypt.compareSync( password, this.password )
}

export default Player;