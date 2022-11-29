import db from "./app/config/db.js";
import express from "express";
import player from './app/routes/player.js';

const app = express();
const port = process.env.PORT || 5000;

app.use( express.json() );
app.use( express.urlencoded( { extended: true } ) );

app.get( "/", ( req, res ) => {
  res.json( { mensaje: "Bienvenid@ al API del Videojuego" } )
} )

app.use('/', player)

app.listen( port, () => {
  console.log( `El servidor esta funcionando en el puerto: ${ port }` );
} )

try{
    await db.authenticate() 
    console.log( 'Conexión Correcta con la Base de Datos' )

    // db.sync({force:false})
    console.log('La Base de Datos está sincronizada')
} catch ( error ) {
    console.log( error )
}
