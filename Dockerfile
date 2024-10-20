# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Set the environment variable for the port
ENV PORT=8080

# Expose the port the application will run on
EXPOSE 8080

# Run the application
CMD ["node", "index.js"]
