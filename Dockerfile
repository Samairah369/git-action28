# Use official Ubuntu base image
FROM ubuntu:22.04

# Install Apache web server
RUN apt-get update && apt-get install -y apache2 && apt-get clean

# Copy your HTML file into Apache's default directory
COPY index.html /var/www/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
