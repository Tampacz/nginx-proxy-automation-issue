# Use an official Python runtime as a parent image
FROM --platform=linux/x86_64 python:3.11.5

# Set the working directory to /app
WORKDIR /app

# Upgrade pip
RUN pip3 install --no-cache-dir --upgrade pip

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5005