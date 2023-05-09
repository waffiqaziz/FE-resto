# Base image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./


# Install app dependencies
RUN npm install --legacy-peer-deps

# Copy app source code
COPY . .

RUN npm run build

# Expose port 8088
EXPOSE 8088

# Run database migrations
CMD npm run serve