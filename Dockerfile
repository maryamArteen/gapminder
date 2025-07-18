# Use a modern Python version
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file from the project root
COPY requirements.txt ./

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files into the container
COPY . .

# Expose the port Streamlit runs on
EXPOSE 8501

# The command to run your application
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]