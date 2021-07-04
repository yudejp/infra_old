FROM openjdk:16-jdk-alpine
ADD ./app /app

# Set working directory
WORKDIR /app

# Run bot
CMD ["java", "-Dnogui=true", "-jar", "JMusicBot-0.5.5.jar"]
