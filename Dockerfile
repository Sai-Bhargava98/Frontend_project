# Use the official Nginx image
FROM nginx:alpine

# Copy your index.html into the default nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
