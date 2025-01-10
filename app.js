import express, { json } from 'express'
import { productoRouter } from './routes/productos.js'
import { corsMiddleware } from './middlewares/cors.js'

const PORT = process.env.PORT ?? 3000
const app = express()
app.use(json())
app.use(corsMiddleware)
app.disable("X-powered-by")


app.use('/productos',productoRouter)

app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`)
})
