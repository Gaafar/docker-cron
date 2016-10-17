# docker-cron
simple container to run cron jobs

## run

`docker run -v "/path/to/cron:/etc/cron.d/crontab" gaafar/cron`

`/path/to/cron`: **absolute** path to crontab file

## crontab example

`* * * * * root  echo "hello" >> /var/log/cron.log 2>&1`
