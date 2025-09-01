# Use official Python image
FROM python:3.9-slim

# Set working directory inside container IPAddress": "172.17.0.2 and 172.17.0.3
WORKDIR /app

# Copy app.py into container from my local directory
COPY app.py .

# Install any necessary dependencies 
# --no-cache-dir = install package but don’t keep the temp files, so your Docker image stays small & efficient.
RUN pip install --no-cache-dir flask
# install numpy
RUN pip install --no-cache-dir numpy

# Expose port 5000 for the Flask app
EXPOSE 5000

# Run the script when container starts
CMD ["python", "app.py"]
 # ENTRYPOINT [ "python", "app.py" ]
# Note: ENTRYPOINT and CMD can be used together, but in this case, CMD is sufficient.