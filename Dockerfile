# Use the official Node.js 14 image as the base
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's files
COPY . .

# Specify the command to run the app
CMD ["node", "server.js"]
