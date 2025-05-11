# 📢 Promotions Module – Vedeshi Khana

This module powers the promotional features of **Vedeshi Khana**, allowing administrators to create, manage, and schedule offers to enhance user engagement and boost sales.

## 🚀 Features

- Create promotional campaigns with titles, descriptions, and images
- Apply discounts as fixed amounts or percentages
- Set promotion start and end dates
- Target specific items, categories, or customer groups
- Display promotional banners on the homepage, menu, or checkout
- Toggle activation status for quick control

## 🛠️ Tech Stack

- Frontend: Vue.js (Admin & Customer Panels)
- Backend: Node.js + Express.js
- Database: MySQL (XAMPP)

## 🔄 API Endpoints (Sample)

| Method | Endpoint             | Description                |
|--------|----------------------|----------------------------|
| GET    | `/api/promotions`    | List all promotions        |
| POST   | `/api/promotions`    | Create a new promotion     |
| PUT    | `/api/promotions/:id`| Update a promotion         |
| DELETE | `/api/promotions/:id`| Delete a promotion         |

## 📌 Usage

### Starting the Server & Connecting to Database

1. **Start XAMPP**  
   - Open **XAMPP** and start the **Apache** and **MySQL** services.
   - Ensure MySQL is running to connect to the database.

2. **Connect the Backend to the Database**  
   - In your **backend** folder, make sure the database connection settings in `config/database.js` (or similar) are correctly set to your MySQL configuration.
   
3. **Run the Frontend**  
   - Open a terminal and navigate to the **frontend** folder using:
     
     cd frontend
     
   - Install dependencies (if packages are not installed):
     
     npm install
     
   - Build the project:
     
     npm run build
     
     This will compile your front-end project. **Note:** Changes made in development mode won't reflect unless you rebuild the project.

   - To run the server:
     
     npm run serve
     

4. **Run the Backend**  
   - Open a terminal and navigate to the **backend** folder.
   - Install dependencies (if packages are not installed):
     
     npm install
     
   - Start the backend server:
     
     npm run start
     
   - If the server doesn't start, try using:
     npm run dev

5. **Live Project Update**  
   - If changes made on the backend or frontend are not reflected on the live server, always remember to rebuild the frontend:
     npm run build

   - Then restart the frontend and backend servers:
     npm run serve    # For frontend
     npm run start    # For backend
    

💡 Integration Notes

- Active promotions are displayed in menu listings and cart summaries.
- Validation ensures expired or inactive promotions are hidden.
- Supports multilingual content and price localization (₹ / $).

👥 Authors

**Vishal Suthar**  
Email: [vishalsuthar2002@outlook.com](mailto:vishalsuthar2002@outlook.com)  
GitHub: [BUGzz007](https://github.com/BUGzz007)

**Sujatha Nath**  
Co-founder & Operations Lead at Vedeshi Khana

⚖️ License
© 2025 Vedeshi Khana. All rights reserved.
