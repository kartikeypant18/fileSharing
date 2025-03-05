# FROM eclipse-temurin:17-jdk
# WORKDIR /app
# COPY . .
# RUN mvn clean package -DskipTests
# CMD ["java", "-jar", "target/*.jar"]
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "target/*.jar"]
