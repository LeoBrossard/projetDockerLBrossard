#
# Build stage
#
FROM maven AS build-stage

RUN git clone https://github.com/LeoBrossard/projetDockerLBrossard.git

WORKDIR /projetDockerLBrossard/api

RUN mvn clean package -Dquarkus.package.type=uber-jar


FROM maven AS running-stage
COPY --from=build-stage /projetDockerLBrossard/api/target .

CMD ["java", "-jar", "tlcdemoApp-1.0.0-SNAPSHOT-runner.jar"]
