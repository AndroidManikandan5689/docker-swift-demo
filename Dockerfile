# Use the official Swift image as the base image
FROM swift:5.10

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents to the container
COPY . .

# Compile the Swift application
#RUN ls -l .build/release/
RUN swift build -c release

# Expose a port if you're building a server application (optional)
# EXPOSE 8080

# Define the command to run the built application
CMD ["./.build/release/MyApp"]
