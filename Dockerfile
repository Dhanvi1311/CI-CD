# Use an official Nginx image to serve the frontend
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the build output (assuming it's already prepared) into the Nginx web root
COPY ./dist /usr/share/nginx/html

# Expose the port Nginx is running on
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
