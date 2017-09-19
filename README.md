# A Simple Reddit bot
Simple scripts to fetch data from reddit for pet projects

## Build the docker image
This assumes you have previously built a vsharma-dockerdev image. See [this repo](docker-dev/blob/master/README.md) for more info.

```
docker build --rm -t github/redditbot-dockerdev /Users/sharmava/Github/RedditBot/docker
```

## Run the docker image
```
docker run -it -v /Users:/Users github/redditbot-dockerdev /bin/bash
```

## Test mariaDB connection works
### Perl
``` 
perl test_mariadb_connection.pl
```
### Python 2.7
``` 
python test_mariadb_connection.py
```
### Python 3.6
```
python3.6 test_mariadb_connection_py3.py
```
