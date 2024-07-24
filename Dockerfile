# Use the official Node.js image as the base image
FROM node:19-alpine

# Set the working directory inside the container
WORKDIR /home/app

# Copy package.json and package-lock.json (if available)
COPY package.json package-lock.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 3002

# Define the command to run the application
CMD ["npm", "run", "start"]
