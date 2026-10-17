# Lightweight web server for static files
FROM nginx:alpine

# Remove default static files
RUN rm -rf /usr/share/nginx/html/*

# Copy the static web application files into Nginx default root
COPY index.html /usr/share/nginx/html/
COPY main.js /usr/share/nginx/html/

# Expose standard web port
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]