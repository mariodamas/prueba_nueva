import express, { json } from 'express'
import { productoRouter } from './routes/productos.js'

const PORT = process.env.PORT ?? 3000
const app = express()
app.use(json())
app.disable("X-powered-by")

app.use((req, res, next) => {
    console.log(`Request URL: ${req.url}`)
    next()
})

app.use('/productos',productoRouter)

app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`)
})