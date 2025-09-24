# Use official Python slim image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy all project files
COPY . /app

# Avoid interactive prompts and fix warnings
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        awscli \
        curl \
        unzip \
        git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies if you have a requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Expose port (if needed)
# EXPOSE 8080

# Default command (change if needed)
CMD ["python3", "app.py"]
