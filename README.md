# Simple Survey API (Node.js + MySQL)

This is the backend for the Simple Survey App. It handles survey questions, form submissions, response listings, and file downloads.

## 🛠 Technologies Used
- Node.js
- Express
- MySQL
- Multer (file uploads)
- dotenv
- CORS

## 📁 Folder Structure
```
simple-survey-api/
├── controllers/
│   └── surveyController.js
├── routes/
│   └── surveyRoutes.js
├── uploads/
├── .env
├── db.js
├── server.js
├── package.json
└── README.md
```

## 🚀 Running the Server

### 1. Install dependencies
```bash
npm install
```

### 2. Add your .env file
```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=yourpassword
DB_NAME=sky_survey_db
```

### 3. Start MySQL (if using WSL)
```bash
sudo service mysql start
```

### 4. Run the server
```bash
node server.js
```

API is available at `http://localhost:5000/api`

## 📂 Endpoints
- `GET /api/questions` - Fetch survey questions
- `PUT /api/questions/responses` - Submit survey response
- `GET /api/questions/responses` - View all responses (with pagination & filter)
- `GET /api/questions/responses/certificates/:id` - Download a specific certificate
