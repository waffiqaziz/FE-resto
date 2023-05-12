# Base image
FROM node:14-alpine as build

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install app dependencies
RUN npm install --global serve
RUN npm ci --legacy-peer-deps

# Copy app source code
COPY . .

# Build the app
RUN npm run build

# Final image
FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Install serve
RUN npm install --global serve

# Copy build artifacts from the previous stage
COPY --from=build /usr/src/app/dist ./dist

# Expose port 3030
EXPOSE 3030

# Run the app
CMD ["serve", "-s", "dist", "-p", "3030"]