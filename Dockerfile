# Use an official Node.js runtime as the base image
FROM node:18.10.0

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application's source code to the container
COPY . .

# Expose the port your application uses (if applicable)
EXPOSE 3000

# Define the command to start your application
# CMD ["npx", "ts-node", "src/index.tsx"]
CMD ["npm", "run", "start"]
