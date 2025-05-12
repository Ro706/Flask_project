# Use an official Python image as the base
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy project files to the container
COPY . .

# Install dependencies
RUN pip install flask-sqlalchemy
RUN pip install flask
RUN pip install gunicorn
# Expose Flask's default port
EXPOSE 5000

# Command to run Flask application
CMD ["gunicorn","--workers=5" ,"--bind", "0.0.0.0:5000", "main:app"]
