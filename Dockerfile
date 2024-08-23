# Use a lightweight web server base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the HTML file to the nginx web root
COPY index.html .

# Expose port 80 to allow external access
EXPOSE 80

# The default command provided by the nginx base image will run nginx in the foreground
