
# Use the official Python base image
FROM python:3.8-buster

# Set the working directory in the container 
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the required python packages
RUN pip3 install --no-cache-dir -r requirements.txt

# copy the application code to the working directory
COPY . .

# Set the environment variables for the flask app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the flask app will run
EXPOSE 5000

# Start the flask app when the container is ran
CMD ["flask", "run"]