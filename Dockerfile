# Use the official Node.js 18 image as a base image
FROM node:18-slim

# Set the working directory in the Docker container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock files
COPY package.json ./
COPY yarn.lock ./

# Install dependencies using yarn
# No need to install yarn as it's already available in the official node images
RUN yarn install --frozen-lockfile

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Build the application
RUN yarn build

# Install 'serve' to serve the application files
RUN yarn global add serve

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 8080

# Run 'serve' to serve the static files from the 'build' directory
CMD ["serve", "-s", "build", "-l", "8080"]
