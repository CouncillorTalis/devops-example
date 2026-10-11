#!/usr/bin/env bash

echo "Build spring boot application into fat jar."
mvn clean package -DskipTests

echo "Extract fat jar into layers."
java -Djarmode=tools -jar web/target/web-0.0.1-SNAPSHOT.jar extract --layers --launcher --destination extracted_layers

echo "Run the layered fat jar using JarLauncher."
java org.springframework.boot.loader.launch.JarLauncher

mkdir run

echo "The folder structure needs to be, BOOT-INF/classes, BOOT-INF/lib, META-INF, org."
cp -r extracted_layers/application/* extracted_layers/dependencies/* extracted_layers/snapshot-dependencies/* extracted_layers/spring-boot-loader/* run/
