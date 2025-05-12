# Flask TODO App with Docker

## Overview
This Flask TODO app allows users to add and remove tasks dynamically. It's containerized using Docker for seamless deployment.

## Features
- ✅ Add & delete tasks using a simple UI
- ✅ Uses **SQLite** for persistent storage
- ✅ Lightweight & easy to deploy using Docker

---

## 1. Setup and Run Flask App Locally
### **Prerequisites**
Ensure you have Python installed and install dependencies:
```sh
pip install flask flask-sqlalchemy
```
### **Run Flask App**
```sh
python app.py
```
The app will be available at `http://127.0.0.1:5000/`

---

## 2. Docker Image Tagging, Pulling & Running

### **Tagging the Docker Image**
```sh
docker tag my-app:latest rohitmandal404/my-app:latest
```
- ✅ This assigns a new name (`rohitmandal404/my-app:latest`) to the local `my-app:latest` image.
- ✅ The tag ensures the image is correctly linked to the **Docker Hub** repository.

### **Pulling the Image from Docker Hub**
```sh
docker pull rohitmandal404/my-app:latest
```
- ✅ Downloads the latest version of the image from **Docker Hub**.
- ✅ Allows anyone to deploy the application using this pre-built image.

### **Running the Docker Container**
```sh
docker run -d -p 5000:5000 rohitmandal404/my-app:latest
```
- ✅ **`-d`** runs the container in detached mode (background).
- ✅ **`-p 5000:5000`** maps port 5000 from the container to the host.
- ✅ **`rohitmandal404/my-app:latest`** starts a new container from the pulled image.

---

## 3. Flask App Structure
```
flask_todo_app/
│── static/
│   ├── styles.css
│── templates/
│   ├── index.html
│── app.py
│── requirements.txt
```

---

## 4. Running with Docker Compose
Start the app with:
```sh
docker-compose up --build
```

---

## Key Benefits
- 🔄 **Version Control**: Keep track of different builds of the app.
- 🚀 **Deployment Ready**: Easily run with Docker & Flask.
- 🔒 **Secure Distribution**: Ensures reliable updates via Docker Hub.

