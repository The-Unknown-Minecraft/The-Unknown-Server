# We need to use Java 8 as Sponge will not run on newer versions.
FROM openjdk:8-jre-alpine

VOLUME ["/data", "/scripts"]

COPY scripts /scripts/

WORKDIR /data

ENTRYPOINT ["/scripts/auto-restart-server.sh"]
