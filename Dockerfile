FROM openjdk:8-jdk

RUN apt-get update

# Install zip.
RUN apt-get install -y netcat

# Install SKDMAN
#RUN curl -s get.sdkman.io | bash
#ADD sdkman.config /.sdkman/etc/config
#ADD bin/ /usr/local/bin/
#RUN . /root/.sdkman/bin/sdkman-init.sh

#ENV SDKMAN_DIR /usr/local/sdkman
#RUN curl -s "https://get.sdkman.io" | bash
#RUN set -x \
    #&& echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config \
    #&& echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config \
    #&& echo "sdkman_insecure_ssl=false" >> $SDKMAN_DIR/etc/config
#RUN set -x source SDKMAN_DIR/bin/sdkman-init.sh

# Install Gradle.
#RUN yes | /bi  n/bash -l -c 'sdk install gradle 3.4.1'

#ENV PATH="/opt/gtk/bin:${PATH}"

VOLUME /tmp

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ADD ./src src
ADD ./build.gradle build.gradle
ADD ./gradlew gradlew
ADD ./gradle gradle

#ADD gs-spring-boot-docker-0.1.0.jar app.jar
#RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""

RUN ./gradlew assemble

#./gradlew build && java -jar build/libs/gs-spring-boot-docker-0.1.0.jar

#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

#RUN while ! echo exit | nc db 3306; do sleep 1; done

#RUN while ! nc -z db 3306; do sleep 3; done

# Migrate the database.
#RUN ./gradlew flywayMigrate

CMD while ! nc -z db 3306; do sleep 3; done && ./gradlew flywayMigrate --stacktrace && java -jar ./build/libs/madziki-api-0.1.0.jar
#CMD tail -f /dev/null
