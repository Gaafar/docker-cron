# docker-cron
simple container to run cron jobs

## running
`docker run -v "/path/to/cron:/etc/cron.d/crontab" gaafar/cron`

`/path/to/cron`: **absolute** path to crontab file

## use as base in a Dockerfile
```
FROM gaafar/cron

# COPY crontab file in the cron directory
COPY crontab /etc/cron.d/crontab

# Add your commands here
```

## crontab example
```
* * * * * root  echo "hello" >> /var/log/cron.log 2>&1
# An empty line is required at the end a cron file.
```

## Notes
- Environment variables won't be available for the cron script by default. Google `docker cron environment` for some workarounds.
