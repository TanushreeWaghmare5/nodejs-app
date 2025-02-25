# Use an official Node.js runtime
FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose port the app runs on
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]

