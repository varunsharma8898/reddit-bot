# A Simple Reddit bot
Simple scripts to fetch data from reddit for pet projects

## Build the docker image
This assumes you have previously built a vsharma-dockerdev image. See [this repo](docker-dev/blob/master/README.md) for more info.

```
docker build --rm -t github/redditbot-dockerdev /Users/sharmava/Github/RedditBot/docker
```

## Run the docker image
```
docker run -it -d --publish 2204:8080 --link=vsharma-mariadb -v /Users/sharmava/Github/RedditBot/static/:/opt/static/ github/redditbot-dockerdev
```
where ```/Users/sharmava/Github/RedditBot/static/``` is where I have kept my static html files and is being mounted on ```/opt/static/``` dir inside the container.
2204 is the port on my machine.
8080 is the port server in my docker container is listening to.

### Viewing static files
```
boot2docker ip
192.168.59.103
```
Check ```http://192.168.59.103:2204``` once docker is running from the previous step.

### Run the docker container started in the previous step
```
docker exec -it d2340d26c823 /bin/bash
```

### Installing the code in docker container
```
/opt/scripts/set_up.sh /Users/sharmava/Github/RedditBot/
```
where ```/Users/sharmava/Github/RedditBot/``` is the dir this code is present.

### Remove any dangling images from docker
```
docker rmi -f $(docker images -f "dangling=true" -q)
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


