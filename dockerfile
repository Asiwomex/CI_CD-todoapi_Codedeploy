# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy project code
COPY . .

# Expose port for Django application (adjust if needed)
EXPOSE 8000

# Set command to run the application (adjust as needed)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
