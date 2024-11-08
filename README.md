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
   - **Endpoint**: `127.0.0.1/library/public/user/register`
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
   - **Endpoint**: `127.0.0.1/library/public/auth`
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
   - **Endpoint**: `127.0.0.1/library/public/authors`
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

 **Get All Authors**
   - **Method**: GET
   - **Endpoint**: `127.0.0.1/library/public/authors/get`
   - **Description**: Retrieves a complete list of authors registered in the library.
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
       "status_message": "Authors retrieved successfully",
       "data": [
         {
           "authorid": 13,
           "name": "Jculaton"
         }
       ],
       "access_token": "_jwt_token"
     }
     ```

