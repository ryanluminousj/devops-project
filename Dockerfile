# Use the official Node.js image from DockerHub
FROM node:18

# Create and set the working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from
COPY . .

# Expose the port your app runs on
EXPOSE 5050

# Command to run the app
CMD ["npm", "start"]