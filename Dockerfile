# Use a base image with a minimal web server
FROM nginx:latest

# Copy the HTML file to the web server's document root
COPY devclass31.html /usr/share/nginx/html/

# Expose the default HTTP port
EXPOSE 80
