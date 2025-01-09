import { Router } from 'express'
import { ProductModel } from '../models/mySQLmodel.js'
export const productoRouter = Router()

productoRouter.get('/', ProductModel.getAll)
productoRouter.get('/:id', ProductModel.getById)
productoRouter.delete('/:id', ProductModel.delete)
productoRouter.patch('/:id', ProductModel.updateCarrito)
productoRouter.post('/:id', ProductModel.updateFavourite) //REALMENTE ES UN PATCH PERO HAY QUE VER COMO DIFERENCIARLO DEL OTRO A LA HORA DE HACER PETICIONES
 