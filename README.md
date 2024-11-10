# Library API 

The Library API is a robust system designed to manage the core resources of a library, including users, authors, and books. Built using PHP with the Slim framework, this API streamlines typical library operations like registration, authentication, and resource management through a series of organized endpoints. The API leverages JSON Web Tokens (JWT) for secure user authentication, ensuring that all transactions are safe and accessible only to authorized users. Ideal for libraries of any scale, this API provides the necessary endpoints to easily integrate with other systems or be extended for custom needs.

##  Overview

The Library  API is structured to simplify core library functions, including user management, book cataloging, and author records, with additional features to securely handle user authentication and authorization. The main functionalities offered include:

- **User Management**: Supports user registration, authentication, profile updates, and deletion.
- **Author Management**: Allows adding, viewing, updating, and deleting author records.
- **Book Management**: Provides endpoints for managing books, including adding, updating, viewing, and deletion.
- **Secure Access**: Uses JWT tokens for session-based access control, ensuring only authenticated users can access protected endpoints.

## Features

- **User Management**: Manage user accounts with full CRUD capabilities.
- **Author Management**: Provides endpoints for author-specific actions.
- **Book Management**: Manage book records, including cataloging and updates.
- **Token-Based Security**: JWT tokens allow for secure and reliable access control.

##  API Endpoints

### User Endpoints

 **User Registration**
   - **Method**: POST
   - **Endpoint**: `http://127.0.0.1/library/public/user/register`
   - **Description**: Creates a new user account in the library system.
   - **Request Body**:
     ```json
     {
       "username": "Jomar",
       "password": "Jomar13"
     }
     ```
   - **Response**:
     ```json
     {
       "status": "success",
       "data": null
     }
     ```

 **User Authentication**
   - **Method**: POST
   - **Endpoint**: `http://127.0.0.1/library/public/auth`
   - **Description**: Logs in a user and issues a JWT access token for secure access to the API.
   - **Request Body**:
     ```json
     {
       "username": "Jomar",
       "password": "Jomar13"
     }
     ```
   - **Response**:
     ```json
     {
       "status": "success",
       "access_token": "jwt_token",
       "data": null
     }
     ```
### Author Endpoints

 **Add Author**
   - **Method**: POST
   - **Endpoint**: `http://127.0.0.1/library/public/authors`
   - **Description**: Adds a new author to the library's database.
   - **Request Body**:
     ```json
     {
       "name": "Jculaton",
       "token": "_jwt_token"
     }
     ```
   - **Response**:
     ```json
     {
       "status": "success",
       "status_message": "Author created successfully",
       "access_token": "_jwt_token"
     }
     ```

 **Update Author**
   - **Method**: PUT
   - **Endpoint**: `http://127.0.0.1/library/public/authors/update/{1}`
   - **Description**: Modifies an existing author’s information in the system.
   - **Request Body**:
     ```json
     {
       "name": "Jculaton",
       "token": "_jwt_token"
     }
     ```
   - **Response**:
     ```json
     {
       "status": "success",
       "status_message": "Author updated successfully",
       "access_token": "_jwt_token"
     }
     ```

 **Delete Author**
   - **Method**: DELETE
   - **Endpoint**: `http://127.0.0.1/library/public/authors/delete/{1}`
   - **Description**: Removes an author from the library's database.
   - **Request Body**:
     ```json
     {
       "token": "_jwt_token"
     }
     ```
   - **Response**:
     ```json
     {
       "status": "success",
       "status_message": "Author deleted successfully",
       "access_token": "_jwt_token"
     }
     ```

### Book Endpoints

 **Add Book**
   - **Method**: POST
   - **Endpoint**: `http://127.0.0.1/library/public/books`
   - **Description**: Registers a new book in the library catalog, with a specified author.
   - **Request Body**:
     ```json
     {
       "title": "Book Title",
       "author_id": 1,
       "token": "_jwt_token"
     }
     ```
   - **Response**:
     ```json
     {
       "status": "success",
       "status_message": "Book created successfully",
       "access_token": "_jwt_token"
     }
     ```

 **Update Book**
   - **Method**: PUT
   - **Endpoint**: `http://127.0.0.1/library/public/books/update/{1}`
   - **Description**: Updates the details of a specific book in the library catalog.
   - **Request Body**:
     ```json
     {
       "title": "Book Title",
       "author_id": 1,
       "token": "_jwt_token"
     }
     ```
   - **Response**:
     ```json
     {
       "status": "success",
       "status_message": "Book updated successfully",
       "access_token": "_jwt_token"
     }
     ```

 **Delete Book**
   - **Method**: DELETE
   - **Endpoint**: `http://127.0.0.1/library/public/books/delete/{1}`
   - **Description**: Deletes a specific book from the library's records.
   - **Request Body**:
     ```json
     {
       "token": "_jwt_token"
     }
     ```
   - **Response**:
     ```json
     {
       "status": "success",
       "status_message": "Book deleted successfully",
       "access_token": "_jwt_token"
     }
