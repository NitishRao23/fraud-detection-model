# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files (app.py, fraud_detection_model.pkl, and requirements.txt)
COPY app.py .
COPY fraud_detection_model.pkl .
COPY requirements.txt .

# Install dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to allow external access to the Flask app
EXPOSE 5000

# Run the Flask application when the container starts
CMD ["python", "app.py"]
