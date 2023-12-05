# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory to /app
WORKDIR /workdir

# Copy the current directory contents into the container at /app
COPY . /workdir 

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install private package
RUN pip install .

# Expose port 8000 for the FastAPI application
EXPOSE 8000

# Run app.py when the container launches
CMD ["python", "src/app/app.py"]