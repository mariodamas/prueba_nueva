import { Router } from 'express'
import { ProductoController } from '../controllers/productoController.js'

export const productoRouter = Router()

productoRouter.get('/', ProductoController.getAll)
productoRouter.get('/:id', ProductoController.getById)
productoRouter.delete('/:id', ProductoController.delete)
productoRouter.patch('/:id', ProductoController.updateCarrito)
productoRouter.post('/:id', ProductoController.updateFavorito) //REALMENTE ES UN PATCH PERO HAY QUE VER COMO DIFERENCIARLO DEL OTRO A LA HORA DE HACER PETICIONES

