# Docker for drush plugins
A docker image with LAMP, Drupal 8.x, latest drush and drush plugins used as a drush playground.

## Usage

```
# Start docker container (will create a Drupal app on localhost:8088)
docker run -ti -p 8088:80 --name drush_plugins tplcom/drush-plugins:latest

# Bash into the container
docker exec -ti drush_plugins bash

# Try drush plugins inside the container
root@04246cc32d64:/var/www/html\# drush
```

## Drush plugins included
See the **Dockerfile** for more info.

## Resources

Docker image is based on [ricardoamaro/drupal8](https://hub.docker.com/r/ricardoamaro/drupal8/) image.

## License

GNU GPL v2
