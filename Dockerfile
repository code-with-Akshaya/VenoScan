# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Install OpenCV dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Copy the application files
COPY . .

# Upgrade pip
RUN pip install --upgrade pip

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the trained model file
COPY venoscan_snake.h5 /app/

# Expose the correct port for Google Cloud Run
EXPOSE 8080

# Set the environment variable for Flask to use port 8080
ENV PORT=8080

# Define the command to run the Flask application using Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
