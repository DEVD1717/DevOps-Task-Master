# official Node.js image as the base image
FROM node:20-alpine

# setting the working directory in the container
WORKDIR /app

# Copying package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copying the rest of the application code
COPY . .

# Expose the port on which the backend will run
EXPOSE 5000

# Starting the server
CMD ["node", "server.js"]
