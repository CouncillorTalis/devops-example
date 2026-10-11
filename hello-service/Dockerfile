FROM eclipse-temurin:21-jre-alpine

WORKDIR /repo

COPY extracted_layers/dependencies/ ./
COPY extracted_layers/spring-boot-loader/ ./
COPY extracted_layers/snapshot-dependencies/ ./
COPY extracted_layers/application/ ./

ENTRYPOINT ["java", "org.springframework.boot.loader.launch.JarLauncher"]