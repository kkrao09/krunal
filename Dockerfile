# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file
COPY . /app

# Install the required dependencies
RUN pip install -r requirements.txt

# Expose port 5000 for the Flask server
EXPOSE 5000

# Set the command to run the Flask server
CMD ["python", "app.py"] 