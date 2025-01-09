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
export class ProductModel{

static async getAll(req,res){
    console.log('Received request for /productos')
    try {
        const [productos] = await connection.query('SELECT * FROM producto')
        console.log("getProductos", productos)
        res.json(productos)
    } catch (error) {
        console.error('Error executing query:', error)
        res.status(500).send('Error al obtener productos')
    }
}

static async getById(req,res){
    try{
        const { id } = req.params
        console.log(id)
        const [producto] = await connection.query('SELECT * FROM producto WHERE producto_id = ?',id)
        res.json(producto)

    }catch(error){
        console.error('Error executing query:', error)
        res.status(500).send('Error al obtener productos')
    }
}

static async delete(req,res){
    try{
        const { id } = req.params
        await connection.query('DELETE FROM UserProducto WHERE producto_id = ? AND user_id = 1', id ) //provisional hasta hacer middleware con getUserId
        res.status(200).send('Producto eliminado del carrito del usuario')
    }catch(error){
        console.log('Error executing query:', error)
        res.status(500).send('Error al eliminar producto del carrito')
    }
}

static async updateCarrito(req,res){
    try{
        const input = req.body
        const { id } = req.params
        console.log('Input: ',input.cantidad)
        console.log('id : ', id)
        await connection.query('UPDATE UserProducto SET cantidad = ? WHERE producto_id = ? AND user_id = 1', [input.cantidad , id] ) //provisional hasta hacer middleware con getUserId
        res.status(200).send('Cantidad de producto actualizado del carrito del usuario')
    }catch(error){
        console.log('Error executing query:', error)
        res.status(500).send('Error al actualizar producto')
    }
}

static async updateFavourite(req,res){
    try{
        const input = req.body
        const { id } = req.params
        await connection.query('UPDATE Producto SET favorito = ? WHERE producto_id = ? ', [input.favorito , id] ) //provisional hasta hacer middleware con getUserId
        res.status(200).send('Producto añadido a favoritos')
    }catch(error){
        console.log('Error executing query:', error)
        res.status(500).send('Error al añadir producto a favoritos')
    }
}
}
