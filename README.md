## local run

```
nohup ./vb.server.linux &
```

## Docker Build


### Build for linux
```
docker build -f Dockerfile -t versionbase --platform linux/amd64 .
```


### Show buid image

```
## CMD

docker images
```

### remove unused images

```
docker system prune
```

### stop/rm instance

```
docker ps -a # get the container id

docker stop {id}

docker rm {id}
```

## Docker Run

```
docker run -p 8080:8080 --name run-versionbase versionbase:latest 
```

> add dns:
>
>
> ```
> docker run --dns=8.8.8.8 -p 8080:8080 --name run-versionbase versionbase:latest
> ```

## Docker Push

### Docker login

```
docker login --username=alfie.zhang https://harbor-xmn.int.rclabenv.com
```

### Docker Push


```
docker tag versionbase:latest harbor-xmn.int.rclabenv.com/versionbase/versionbase:1.0.0

docker push harbor-xmn.int.rclabenv.com/versionbase/versionbase:1.0.0
```

