# Use a Node.js base image with a specific version
FROM node:18-alpine

# Create a working directory
WORKDIR /app

# Copy package.json and package-lock.json (or package.json) to install dependencies
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci 

# Copy the rest of the application code
COPY . . 

# Expose the port (if needed)
EXPOSE 3000 

# Command to start the application
CMD ["npm", "start"]
