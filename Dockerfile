FROM openjdk:18-alpine

RUN apk add --update --no-cache make bash curl git ca-certificates openssh-client wget
RUN wget -O simdata-1.2.1.jar http://download.splunk.com/misc/simdata/simdata-1.2.1.jar

EXPOSE 11013

# RUN wget -O simdata-example-1.0.0.zip https://download.splunk.com/misc/simdata/simdata-example-1.2.1.zip
ADD simdata-example /simulation
CMD echo "Sleeping for Splunk to start (35s)..." && \
    sleep 35 && \
    echo "Running simulation..." && \
    java -jar simdata-1.2.1.jar -s simulation/webserver.simulation -c simulation/webserver.json
