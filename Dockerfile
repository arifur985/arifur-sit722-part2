FROM --platform=linux/amd64 node:18.17.1
# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements file from the correct location
COPY book_catalog/requirements.txt ./

# Install the application dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the remaining source code into the working directory
COPY book_catalog/ . .

# Expose the port on which the app will run
EXPOSE 3000

# Command to run the application
CMD ["python", "main.py"]
