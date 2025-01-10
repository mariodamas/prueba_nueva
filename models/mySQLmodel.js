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

    static async getAll(){
        const [productos] = await connection.query('SELECT * FROM producto')
        return productos
    }

    static async getById({id}){
        const [producto] = await connection.query('SELECT * FROM producto WHERE producto_id = ?',id)
        return producto
    }

    static async delete({id}){
        let resultado = true
        try{
            await connection.query('DELETE FROM UserProducto WHERE producto_id = ? AND user_id = 1', id ) //provisional hasta hacer middleware con getUserId
        }catch(error){
            resultado = false
    } 
        return resultado
    }

    static async updateCarrito({id, input}){
        let resultado = true
        try{
            await connection.query('UPDATE UserProducto SET cantidad = ? WHERE producto_id = ? AND user_id = 1', [input.cantidad , id] ) //provisional hasta hacer middleware con getUserId
        }catch(error){
            resultado = false
        }
        return resultado
    }

    static async updateFavorito({id,input}){
        console.log(input.favorito)
        let resultado = true
        try{
            await connection.query('UPDATE Producto SET favorito = ? WHERE producto_id = ? ', [input.favorito , id] ) //provisional hasta hacer middleware con getUserId
        }catch(error){
            resultado = false
        } 
        return resultado
    }
}
