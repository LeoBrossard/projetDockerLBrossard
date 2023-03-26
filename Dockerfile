FROM ubuntu As build

RUN apt-get update \
&& apt-get install -y openjdk-8-jdk \
&& apt-get install -y maven \
&& apt-get install -f libpng16-16

RUN apt-get install -y git
RUN git clone https://github.com/barais/TPDockerSampleApp

WORKDIR ./TPDockerSampleApp

RUN mvn install:install-file -Dfile=./lib/opencv-3410.jar \
     -DgroupId=org.opencv  -DartifactId=opencv -Dversion=3.4.10 -Dpackaging=jar \
&& mvn package

EXPOSE 8080

CMD ["java", "-Djava.library.path=lib/ubuntuupperthan18/", "-jar", "target/fatjar-0.0.1-SNAPSHOT.jar"]
