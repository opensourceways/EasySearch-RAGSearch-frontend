# Use Node.js 18 as the base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package files first to leverage Docker cache
COPY frontend/React/package*.json ./

# Install dependencies
RUN npm install

# Copy source code after npm install to prevent unnecessary reinstalls
COPY frontend/React/ ./

# Start the development server
CMD ["npm", "start"]