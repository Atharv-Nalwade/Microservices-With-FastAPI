@echo off



REM Run the consumer.py for inventory microservice
cd inventory
pip install -r requirements.txt
start "" python consumer.py
start "" uvicorn main:app --reload --port=8000
cd ..

REM Run the consumer.py for payment microservice
cd payment
pip install -r requirements.txt
start "" python consumer.py
start "" uvicorn main:app --reload --port=8001
cd ..

REM Run the frontend server
cd inventory-frontend
npm install && npm start

REM Pause to keep the console window open
pause