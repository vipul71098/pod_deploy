# Use the Alpine-based Node.js image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy application files
COPY . .

# Install dependencies
RUN npm install

# Expose port 5000
EXPOSE 5000

# Define the command to run the application
CMD ["node", "index.js"]
