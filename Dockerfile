FROM python:3.11-slim
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Create papers directory
RUN mkdir -p papers

# Use the PORT environment variable
ENV PORT=8001

# Expose the port
EXPOSE ${PORT}

# Run the application
CMD ["python", "research_server.py"]