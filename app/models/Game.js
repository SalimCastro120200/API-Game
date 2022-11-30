import { DataTypes } from "sequelize";
import Player from "./Player.js";
import db from "../config/db.js";

const Game = db.define(
    "tb_games",
    {
        score: {
            type: DataTypes.INTEGER,
            allowNull: false,
            default: 0
        },
        coins: {
            type: DataTypes.INTEGER,
            allowNull: true
        }
    })

Player.hasMany( Game, { foreignKey: 'playerID' } )
export default Game;