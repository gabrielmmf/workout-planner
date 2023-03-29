require('dotenv').config()

const PORT = process.env.PORT ?? 8000;

const express = require('express');

const { v4: uuidv4 } = require('uuid');

const cors = require('cors');

const app = express();

const pool = require('./db');

const bcrypt = require('bcrypt');

const jwt = require('jsonwebtoken');

app.use(cors());

app.use(express.json());

// GET EXERCISES

app.get('/exercises/:userId', async (req, res) => {
    try {

        const { userId } = req.params;

        const exercises = await pool.query('SELECT * FROM exercises WHERE user_id = $1', [userId]);

        res.json(exercises.rows)

    } catch (error) {
        console.log(error);
    }
})

// POST EXERCISES

// SIGNUP

app.post('/signup', async (req, res) => {
    const { email, username, password } = req.body;
    console.log(req);
    const salt = bcrypt.genSaltSync(10);
    const hashedPassword = bcrypt.hashSync(password, salt)
    const id = uuidv4();
    try {
        const signUp = await pool.query(`INSERT INTO users (user_id, username, email, hashed_password) VALUES($1, $2, $3, $4)`,
            [id, username, email, hashedPassword])

        const token = jwt.sign({ email }, 'secret', { expiresIn: '1hr' })

        res.json({ email, token })

    } catch (error) {
        console.error(error);
        if (error) {
            res.json({ detail: error.detail })
        }
    }
})

// LOGIN

app.post('/login', async (req, res) => {
    const { email, password } = req.body;
    try {
        const users = await pool.query('SELECT * FROM users WHERE email = $1', [email])
        if (!users.rows.length) return res.json({ detail: 'User does not exist!' })

        const success = await bcrypt.compare(password, users.rows[0].hashed_password)

        if (success) {
            const token = jwt.sign({ email }, 'secret', { expiresIn: '1hr' })
            res.json({ 'email': users.rows[0].email, token })
        } else {
            res.json({ detail: 'Wrong password' })
        }
    } catch (error) {
        console.error(error);

    }
})



app.listen(PORT, () => console.log(`SERVER RUNNING ON PORT ${PORT}`));