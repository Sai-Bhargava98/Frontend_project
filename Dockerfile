# Use Node.js official image
FROM node:14

# Set working directory
WORKDIR /app

# Copy backend files
COPY backend/ ./backend
# Copy frontend files
COPY frontend/ ./frontend

# Install dependencies
WORKDIR /app/backend
RUN npm init -y && npm install express

# Expose port
EXPOSE 3000

# Start server
CMD ["node", "server.js"]
