# Use an official Debian base image
FROM debian:latest

# Set the working directory
WORKDIR /minecraft

# Copy the local minecraft directory to the image
COPY /minecraft /minecraft

# Add the Debian sid repository to sources.list
RUN echo "deb http://deb.debian.org/debian/ sid main" >> /etc/apt/sources.list

# Update repositories and install OpenJDK 8
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk

# Expose the required ports (default Minecraft server port)
EXPOSE 25565

# Copy required files and directories to the container
COPY eula.txt /minecraft/
COPY server.properties /minecraft/
COPY mods /minecraft/mods/
COPY world /minecraft/world/

# Set the entrypoint to start the Minecraft server
ENTRYPOINT ["java", "-Xmx1024M", "-Xms512M", "-jar", "forge.jar", "nogui"]

