import Game from '../models/Game.js'

const viewHighScores = async( req, res ) => {
    const highscores = await Game.sequelize.query('SELECT * FROM vw_highscores');
    res.json({highscores: highscores[0]});
};

export {
    viewHighScores
};