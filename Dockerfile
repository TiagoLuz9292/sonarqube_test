# Use Node.js LTS version as base image
FROM node:16-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Run tests during build
RUN npm test

# Specify default command
CMD ["node", "index.js"]
