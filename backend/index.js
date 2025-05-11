// Using nodemon so you don't need to type 'node index.js' every time new code is saved

// Importing required modules using ES Module syntax

import express from "express";
import bodyParser from "body-parser";
import cors from "cors";
import router from "./routes/routes.js"; // Assuming you have a router file in routes folder
import path from "path";

// Setting up path for the project
const __dirname = path.resolve();

// Initializing Express
const app = express();

// Middleware to parse JSON and urlencoded data
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Enabling CORS
app.use(cors());

// Using the router for handling routes
app.use(router);

// Handle API root request
app.get('/api', function(req, res) {
  res.json({ message: 'Welcome to restaurant api' });
});

// Serve static files for production or the app itself
app.use(express.static(path.join(__dirname, './restaurant_management/')));

// Serve the SPA (Single Page Application)
app.get('/*', function(req, res) {
  res.sendFile(path.join(__dirname, './restaurant_management/index.html'))
});

// Set up the port, default is 8001
const PORT = process.env.PORT || 8001;

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});

