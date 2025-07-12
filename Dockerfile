# Base image
FROM node:lts-buster

# Set working directory
WORKDIR /app

# Copy package.json only
COPY package.json .

# Install all dependencies
RUN npm install

# Copy all files to container
COPY . .

# Expose desired port
EXPOSE 9090

# Run the app (no PM2)
CMD ["node", "body.js"]
