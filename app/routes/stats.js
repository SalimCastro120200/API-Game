import express from 'express';
import { viewHighScores } from '../controllers/stats.js';

const router = express.Router();

router.get("/stats/highscores/", viewHighScores)

export default router;