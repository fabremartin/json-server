#Node.js Alpine image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the JSON server with npx
CMD ["npx", "json-server", "db.json", "--host", "0.0.0.0", "--port", "3000"]
