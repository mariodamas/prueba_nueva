import express from 'express'
import mysql from 'mysql2/promise'

const DEFAULT_CONFIG = {
    host: 'localhost',
    user: 'root',
    port: 3306,
    password: 'mario',
    database: 'productos'
}
const connectionString = process.env.DATABASE_URL ?? DEFAULT_CONFIG

let connection;
try {
    connection = await mysql.createConnection(connectionString)
    console.log('Database connection established')
} catch (error) {
    console.error('Error connecting to the database:', error)
    process.exit(1)
}

const PORT = process.env.PORT ?? 3000

const app = express()
app.disable("X-powered-by")

app.get('/productos', async (req, res) => {
    try {
        const [productos] = await connection.query('SELECT * FROM producto')
        console.log("getProductos", productos)
        res.json(productos)
    } catch (error) {
        console.error('Error executing query:', error)
        res.status(500).send('Error al obtener productos')
    }
})

app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`)
})