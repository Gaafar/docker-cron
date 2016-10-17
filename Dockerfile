FROM ubuntu:latest

# Install cron
RUN apt-get update
RUN apt-get install -y cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log
