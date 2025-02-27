# Product Management Backend

This project is a backend for product management using Node.js, Express, and MySQL.

## Requirements

- Node.js v22.11.0 or higher
- MySQL

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/your-repository.git
    cd your-repository/backend
    ```

2. Install the dependencies:

    ```bash
    npm install
    ```

3. Configure the database:

    - Create a database in MySQL named [productos](http://_vscodecontentref_/0).
    - Update the database credentials in the [mysqlModel.js](http://_vscodecontentref_/1) file if necessary.

4. Configure environment variables:

    Create a `.env` file in the root of the project and add the following configuration:

    ```env
    DATABASE_URL=mysql://user:password@localhost:3306/productos
    ```

## Usage

1. Start the server:

    ```bash
    npm start
    ```

    The server will run on `http://localhost:3000`.

2. Test the routes using an HTTP client like Postman or the included [api.http](http://_vscodecontentref_/2) file.

## Routes

### Get all products

- **URL:** `/productos`
- **Method:** `GET`
- **Description:** Retrieves all products.

### Get a product by ID

- **URL:** `/productos/:id`
- **Method:** `GET`
- **Description:** Retrieves a product by its ID.

### Delete a product by ID

- **URL:** `/productos/:id`
- **Method:** `DELETE`
- **Description:** Deletes a product by its ID.

### Update a product by ID

- **URL:** `/productos/:id`
- **Method:** `PATCH`
- **Description:** Updates a product by its ID.

## Project Structure

```plaintext
backend/
├── controllers/
│   └── productoController.js
├── models/
│   └── mysqlModel.js
├── routes/
│   └── productos.js
├── api.http
├── app.js
├── package.json
└── README.md
