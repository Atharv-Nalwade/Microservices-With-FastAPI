# 🚀 StreamCommerce: Effortless E-commerce Powered by Streams

## Architectire Diagram:
![Architecture Diagram] (./assets/Arch.png)

StreamCommerce, where the power of real-time streams fuels seamless online shopping! 🛒💫

## Payment Processing 🧾
- FastAPI's robustness + Redis's speed = Lightning-fast payments ⚡💳
- Hassle-free order management with just a few clicks! 📦🛍️
- Refunds? No worries! Our trusty worker 🛠️ ensures they're handled smoothly. 🔄💰

## Inventory Control 📦
- Keep stock levels in check effortlessly. 📊✅
- Real-time inventory updates, thanks to our trusty stream worker! 🌊✨
- Add, view, or remove products with ease. ✨🗄️

## User-Friendly React App 🌐
- Explore our user-friendly React app to browse and order products! 📱🌟
- Place orders, track them, and enjoy the simplicity! 🛒🔍
- Create new products effortlessly, with a sleek and intuitive design! 🆕🖼️

## Technical Details:

### Payment Folder
- **main.py (FastAPI Web Server):**
   - Handles order creation and retrieval via web-based interfaces.
   - Utilizes FastAPI and connects to Redis for order storage.
   - Provides endpoints for order viewing and creation.
- **consumer.py (Order Consumer):**
   - Background worker for processing returns and refunds.
   - Monitors Redis for refund requests and updates order statuses.

### Inventory Folder
- **consumer.py (Inventory Consumer):**
   - Manages product inventory and processes completed orders.
   - Utilizes Redis for inventory updates and refund handling.
- **main.py (FastAPI Web Server for Inventory):**
   - Acts as an inventory management system using FastAPI.
   - Connects to Redis for storing and retrieving product information.
   - Provides endpoints for product management.

### React Application
- **App.js**
   - Sets up routing using React Router for various application sections.
- **Orders.js**
   - Displays an order placement form and fetches real-time product prices.
- **Products.js**
   - Lists products and offers deletion functionality.
- **ProductsCreate.js**
   - Provides a form for creating new products.
- **Wrapper.js**
   - Ensures consistent styling and layout throughout the app.

### Bat File
- A bat file named `run_all.bat` is present for running all required servers for both frontend and backend . Will run all cmds required to start using the project.Present for feasbllity

### Environment Configuration

To run the StreamCommerce project successfully, you need to configure the following environment variables in your project's environment. These variables ensure the correct setup and functionality of the application.

- **HOST:** `<YOUR_REDIS_HOST>`
  - This variable specifies the host address of the Redis database used for payment and inventory management.

- **PORT:** `15659`
  - The `PORT` variable specifies the port number for connecting to the Redis database. It's essential for establishing a connection to the Redis server.

- **PASSWORD:** `<YOUR_PWD>`
  - The `PASSWORD` variable should be set to the authentication password required to access the Redis database securely.

Please ensure that these environment variables are correctly set in your environment configuration (e.g., in a `.env` file) to enable the smooth operation of the StreamCommerce project. These values are vital for connecting to the Redis database and ensuring the proper functionality of the payment and inventory management components.

#### Future Work :
- Validations are to be added
- Main aim of project was to work with fastapi in a microservice based arch along with streams.


Join the StreamCommerce revolution today and experience e-commerce in the fast lane! 🚀🛍️






