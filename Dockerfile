# Use the official Node.js 18 image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all other files
COPY . .

# Expose the port your app runs on
EXPOSE 2000

# Command to start the app
CMD ["node", "server.js"]
