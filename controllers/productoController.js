import { ProductModel } from "../models/mySQLmodel.js"

export class ProductoController {
    static async getAll (req, res) {
       // const { filtros } = req.query
       const productos = await ProductModel.getAll()
       res.json(productos)
    }

    static async getById (req, res) {
        const { id } = req.params
        const producto = await ProductModel.getById({id})
        if (producto) return res.json(producto)
        res.status(404).json({message : "Producto no encontrado"})
     }

    static async delete (req, res) {
        const {id} = req.params
        let resultado = await ProductModel.delete({id})
        if(resultado) return res.status(200).json({ message: "Producto eliminado del carrito"})
        else return res.status(500).json({ message: "Error producido al intentar eliminar el producto del carrito"})
     }

     static async updateCarrito (req, res){
        const {id} = req.params
        const input = req.body
        let resultado = await ProductModel.updateCarrito({id,input})
        if(resultado) return res.status(200).json({ message: "Cantidad actualizada"})
        else return res.status(500).json({ message: "Error producido al intentar actualizar la cantidad de producto"})
     }

     static async updateFavorito (req, res) {
        const {id} = req.params
        const input = req.body
        let resultado = await ProductModel.updateFavorito({id,input})
        if(resultado) return res.status(200).json({ message: "Producto añadido a favoritos"})
        else return res.status(500).json({ message: "Error producido al intentar añadir a favoritos el producto"})
     }
}