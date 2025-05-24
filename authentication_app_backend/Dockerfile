# Use official Node.js image
FROM node:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

RUN npm run build

# Expose the backend port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]