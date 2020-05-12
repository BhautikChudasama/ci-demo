# Choosing base image
FROM node:13

# Create working directory
WORKDIR /usr/src/app

# Copy package.json to usr/src/app
COPY package*.json ./

# Install dependency
RUN npm install

# copy all
COPY . .

# expose 
EXPOSE 8080

# Define the Docker image's behavior at runtime
CMD ["node", "server.js"]

