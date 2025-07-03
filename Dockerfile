FROM python:3.11-slim-bullseye

# Set the working directory
WORKDIR /app

# Copy all files from current directory to the container's /app directory
COPY . .

# Install system dependencies using APT (NOT apk)
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    libffi-dev \
    build-essential \
    ffmpeg \
    aria2 \
    make \
    g++ \
    cmake \
    curl \
    unzip \
    wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install Bento4 (for mp4decrypt)
RUN wget -q https://github.com/axiomatic-systems/Bento4/archive/v1.6.0-639.zip && \
    unzip v1.6.0-639.zip && \
    cd Bento4-1.6.0-639 && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make -j$(nproc) && \
    cp mp4decrypt /usr/local/bin/ && \
    cd ../.. && \
    rm -rf Bento4-1.6.0-639 v1.6.0-639.zip

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Set the command to run both Flask (for health check) and the bot
CMD ["sh", "-c", "gunicorn app:app & python3 main.py"]
