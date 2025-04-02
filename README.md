# uv-docker-example

An example project for using uv in Docker images.

## Trying it out

Build the Docker image with:

```
docker build -t fastapi-image .
```

Run the Docker container locally with:

```
docker run --name fastapi-container -p 8000:8000 fastapi-app
```

Navigate to http://127.0.0.1:8000/?token=bruno in your browser to verify that the app is running correctly.

### Clean Up

Stop the Container:
```
docker stop fastapi-container
```

List Containers:
```
docker ps -a
```

Delete the Container:
```
docker rm fastapi-container
```

List Docker Images:
```
docker image rm fastapi-image
```

Remove unused docker resources i.e. stopped containers, unused networks, and dangling images(without a container reference) / build cache(unused):
```
docker system prune
```

Remove dangling images (without a tag or container reference):
```
docker image prune
```

## Further Resources

https://docs.astral.sh/uv/guides/integration/fastapi/
https://github.com/astral-sh/uv-docker-example
https://github.com/astral-sh/uv-fastapi-example
https://github.com/patrickloeber/python-docker-tutorial
