
FROM wildfly:latest
COPY sample.war /wildfly/standalone/deployments/ROOT.war
CMD ["/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
