# docker-test

## Install and run

```
cd  docker-test
cpanm --installdeps .
morbo server.pl

# fetch date
curl http://localhost:3000/date
```

## Docker
```
docker run --name=docker-test -d -p 3000:3000 nicklebi/docker-test:latest

# fetch date
curl http://localhost:3000/date
{"date":"Fri Sep 22 08:45:13 UTC 2017"}
```
