# 📄 Help App Backend Developer Assessment – Detailed Breakdown

This markdown document provides a detailed explanation of the technical assessment provided by **Help App Africa** for the **Backend and Mobile Developer** position.

---

## ⏱ Duration & Submission

- **Duration:** 48 hours from the time the assessment is received.
- **Submission Format:**
  - A link to a **GitHub repository** or a **ZIP file** containing:
    - Full codebase
    - A comprehensive `README.md` file
    - OpenAPI (Swagger) documentation of the API

---

## 🧰 Use Case

**Help App** is a service-based platform that connects clients with service providers for on-demand tasks such as:
- Plumbing
- Cleaning
- Electrical work

---

## ✅ Task Objective

Build a **simplified backend** for **one of the core modules**:
- **Booking Management**, or
- **User Management**

---

## 🛠 Project Setup Requirements

- Use **Nest.js API routes** to develop the REST API.
- Integrate a **relational database**, preferably **PostgreSQL**.
- Utilize **environment variables** for sensitive configurations like:
  - Database URL
  - JWT secret keys

---

## 🗄 Database Schema Design

Create and define relationships between the following models:

### 👤 Users
- Fields: id, name, email, password, userType (`client` or `provider`), timestamps
- A user can have many bookings and reviews.

### 🛠 Services
- Fields: id, name (e.g., Cleaning, Plumbing), timestamps

### 📅 Bookings
- Fields: id, serviceId, clientId, providerId, status, scheduledDate, timestamps

### ⭐ Reviews
- Fields: id, rating, comment, bookingId, clientId, providerId, timestamps

### 🔐 Auth Tokens (Optional)
- For refresh tokens or session management

**Additional Requirements:**
- Proper relationship mapping
- Include `createdAt` and `updatedAt` timestamps in all tables

---

## 🔌 API Endpoints Overview

### 👤 User Endpoints
- `POST /api/signup`: Register as a client or provider
- `POST /api/login`: Authenticate and return JWT
- `GET /api/me`: Get logged-in user's profile (**JWT protected**)

### 🛠 Service Endpoints
- `GET /api/services`: Publicly list all services
- `POST /api/services`: **Admin only** – Create new service types

### 📅 Booking Endpoints
- `POST /api/bookings`: Client books a service provider
- `GET /api/bookings`: Retrieve bookings for the logged-in user
- `PATCH /api/bookings/:id`: Provider accepts or rejects a booking

### ⭐ Review Endpoint
- `POST /api/reviews`: Clients review a completed service

---

## 📊 Evaluation Criteria

Your solution will be reviewed based on:

- **Architecture**: Clean, modular project structure
- **API Design**: RESTful and meaningful endpoint structure
- **Database Design**: Efficient relationships and normalization
- **Authentication**: JWT-based access control
- **Security**: Password hashing, input validations, and secure config handling
- **Code Quality**: Readable code with proper error handling and comments
- **Documentation**: Clear `README.md` and Swagger/OpenAPI docs

---

## 📦 Submission Notes

Along with the GitHub or ZIP file submission:

- You **must include** full Swagger (OpenAPI) documentation of the API.
- You must **host the Swagger UI** publicly using tools like:
  - [SwaggerHub](https://swagger.io/tools/swaggerhub/)
  - [Vercel + Swagger UI](https://vercel.com/)
  - [Redocly](https://redoc.ly/)

---

## 📘 `README.md` Requirements

Your `README.md` should include:

1. 📦 **Tech Stack**: List of technologies, frameworks, and libraries used.
2. 🛠 **Setup Instructions**: How to install dependencies and run the app.
3. 🌐 **Swagger Documentation Link**: URL to hosted Swagger UI.
4. 💡 **Assumptions or Shortcuts**: Any edge cases or simplifications made.
