import cors from 'cors'

const ACCEPTED_ORIGINS = [
    'http://localhost:3000',
    'http://localhost:8080'
]

export const corsMiddleware = cors({
    origin: (origin, callback) => {
        if (ACCEPTED_ORIGINS.includes(origin) || !origin) {
            return callback(null, true)
        }
        return callback(new Error('Not allowed by CORS'))
    },
    methods: ['GET', 'POST', 'DELETE', 'PATCH', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization'],
    optionsSuccessStatus: 200
})