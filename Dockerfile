FROM scratch

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Ensure the server file has execution permissions
RUN chmod +x /gtaconnected/Server

# Expose the necessary port
EXPOSE 22000/udp

# Start the server
CMD ["./Server"]