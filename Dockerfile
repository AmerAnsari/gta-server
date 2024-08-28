FROM debian:stable-slim

# Set the working directory in the container
WORKDIR /app

# Install necessary dependencies (if any)
RUN apt-get update && apt-get install -y \
    lib32gcc-s1 \
    && rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container at /app
COPY . /app/

# Ensure the server file has execution permissions
RUN chmod +x ./app/Server

# Expose the necessary port
EXPOSE 22000

# Start the server
CMD ["./app/Server"]