FROM openjdk:17
LABEL authors="szymon-gniado"

ADD /build/libs/'liveflock-0.0.1-SNAPSHOT.jar' api.jar

ENTRYPOINT ["java", "-jar", "/api.jar"]