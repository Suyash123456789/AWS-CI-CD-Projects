# Use official Python slim image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy source code
COPY . /app

# Install system dependencies
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        awscli \
        curl \
        unzip \
        git \
        ca-certificates \
        && rm -rf /var/lib/apt/lists/*

# Install Python dependencies (if you have requirements.txt)
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Default command (optional, override when running container)
CMD ["python3"]
