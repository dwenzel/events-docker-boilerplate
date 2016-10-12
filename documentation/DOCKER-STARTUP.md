[<-- Back to main section](../README.md)

# First startup

## Create project

Checkout this project and create and run the Docker containers using [docker-compose](https://github.com/docker/compose):

```bash
git clone https://github.com/dwenzel/events-docker-boilerplate.git <projectname>
cd <projectname>

# copy favorite docker-compose.*.yml to docker-compose.yml
cp docker-compose.development.yml docker-compose.yml

docker-compose up -d
```

Now create your project inside the docker boilerplate:

- [Create new TYPO3 project](PROJECT-TYPO3.md)

