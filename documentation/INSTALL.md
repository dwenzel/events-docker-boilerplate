[<-- Back to main section](../README.md)

# Installation

## Requirements

- GNU/Linux with Docker. VM with Docker or [native Linux with Docker](http://docs.docker.com/linux/step_one/)
- make
- [composer](https://getcomposer.org/)
- [docker-compose](https://github.com/docker/compose)

If you want to run a Docker VM make sure you're using VMware or Parallels Desktop because of
the much faster virtualisation (networking, disk access, shared folders) compared to VirtualBox.

For more convenience use [CliTools.phar](https://github.com/webdevops/clitools) (will also run on native Linux, not only inside a Vagrant box)

## First startup

```bash
git clone --recursive https://github.com/dwenzel/events-docker-boilerplate.git <projectname>

cd <projectname>

# copy favorite docker-compose.*.yml to docker-compose.yml
cp docker-compose.development.yml docker-compose.yml

docker-compose up -d
```
