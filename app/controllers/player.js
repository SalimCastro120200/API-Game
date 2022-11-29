import Player from "../models/Player.js";

const findPlayerByID = async ( req, res ) => {
  const { id } = req.params;
  const player = await Player.findOne( { where: { id } } );

  if ( !player ) {
    return res.status( 404 ).json({
      mensaje: `No existe el jugador con el ID: ${id}.`
    });
  }

  res.json( player )
}

const findAllPlayers = async ( req, res ) => {
  const allPlayers = await Player.findAll();
  res.json( allPlayers );
  return false;
};

const createPlayer = async (req, res) => {
  const { email, password, name, birthdate, nickname, avatar_url } = req.body;
  console.log(req.body);

  try {
    const existsPlayerByEmail = await Player.findOne({
      where: { email }
    });

    const existsPlayerByNickname = await Player.findOne({
      where: { nickname }
    });

    if ( existsPlayerByEmail ) {
      return res.json({ mensaje: `El Jugador ya existe con correo ${ email } ya existe.` });
    } else if( existsPlayerByNickname ){
      return res.json({ mensaje: `El Jugador ya existe con Nickname ${ nickname } ya existe.` });
    }else {
      const newPlayer = await Player.create({
        email,
        password,
        name,
        birthdate,
        nickname,
        avatar_url,
      });

      return res.json({
        mensaje: `El Jugador ${ newPlayer.nickname } ha sido creado`,
      });
    }
  } catch ( error ) {
    console.log( error );
    return res.json({
      mensaje: `Un error ocurrio al crear al Jugador ${newPlayer.nickname}`,
    });
  }
};

const updatePlayer = async ( req, res ) => {
  const { id } = req.params;
  const { body } = req;

  try {
    const player = await Player.findOne({
      where: {id}
    });

    if ( !player ) {
      return res.status( 404 ).json({
        mensaje: `No existe el jugador con el ID: ${id}.`
      });
    }

    await player.update( body );
    res.json( player );

  } catch (err) {
    res.json( err );
  }

}

const deletePlayerByID = async ( req, res ) => {
  const { id } = req.params;
  const player = await Player.findOne({
    where: { id }
  });

  if ( !player ) {
    return res.status( 404 ).json({
      mensaje: `No existe el jugador con el ID: ${id}.`
    });
  }

  await player.destroy();
  res.json( { mensaje: `El Jugador con el ID ${id} ha sido eliminado.` } )

};

const findPlayerByNickname = async ( req, res ) => {
  const { nickname } = req.params;
  const player = await Player.findOne({ 
    where: { nickname } 
  });

  if ( !player ) {
    return res.status( 404 ).json({
      mensaje: `No existe el jugador con el NICKNAME: ${nickname}.`
    });
  } 

  res.json( player )
};

export {
  findPlayerByID,
  findAllPlayers,
  createPlayer,
  updatePlayer,
  deletePlayerByID,
  findPlayerByNickname,
};
