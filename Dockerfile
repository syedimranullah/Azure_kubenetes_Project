FROM ubuntu:22.04
MAINTAINER imranullahsyed.dwh@gmail.com

# Update package lists and install Apache HTTP Server, zip, and unzip
RUN apt update -y && \
    apt install -y apache2 zip unzip

# Create a directory to store the extracted files
#WORKDIR /var/www/html/

# Copy the zip file into the image
#COPY photogenic.zip .

# Unzip the zip file
#RUN unzip photogenic.zip && \
#   cp -rvf photogenic/* . && \
#   rm -rf photogenic photogenic.zip

# Start Apache HTTP Server
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# Expose ports
EXPOSE 80
