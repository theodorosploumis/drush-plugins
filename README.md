# Drush plugins in Docker
A docker image with LAMP, Drupal 8.x, latest drush and drush plugins used as a drush playground.

## Software

- LAMP
- Adminer
- git
- composer
- supervisor
- vim tiny
- openssh
- drupal 8.x (latest stable, installed on runtime)
- drush
- "several" drush plugins

## Usage

```
# Start docker container 
# (will install Drupal on <DOCKER_IP>:8088 with admin/admin credentials)
docker run -ti -p 8088:80 --name drush_plugins tplcom/drush-plugins:latest

# Execute bash into the container
docker exec -ti drush_plugins bash

# Play with the drush plugins inside the container
root@04246cc32d64:/var/www/html# drush
```

For modre details see the docker [base image instructions](https://hub.docker.com/r/ricardoamaro/drupal8/).

## Drush plugins included
- [cerbere](https://github.com/smalot/drush-cerbere)
- [check](https://www.drupal.org/project/check)
- [composer](https://www.drupal.org/project/composer)
- [config-extra](https://github.com/drush-ops/config-extra)
- [deployotron](https://github.com/reload/deployotron)
- [destination_alter](https://www.drupal.org/project/destination_alter)
- [dev_modules](https://www.drupal.org/project/dev_modules)
- [extension-configuration](https://github.com/Chi-teck/extension-configuration)
- [drush_cmi_tools](https://github.com/previousnext/drush_cmi_tools)
- [drush_entity](https://www.drupal.org/project/drush_entity)
- [drush-filesync](https://github.com/gapple/drush-filesync)
- [drush_get](https://github.com/dman-coders/drush_get)
- [drush_hosts](https://www.drupal.org/project/drush_hosts)
- [drush_iq](https://www.drupal.org/project/drush_iq)
- [drush-module-sync](https://github.com/droath/drush-module-sync)
- [drush_msync](https://github.com/clever-systems/drush_msync)
- [drush-multi-processing](https://github.com/johnennewdeeson/drush-multi-processing)
- [drush_patch_upload](https://www.drupal.org/sandbox/mbovan/2848528)
- [drush-patchfile](https://bitbucket.org/davereid/drush-patchfile)
- [drush_rest_api](https://www.drupal.org/project/drush_rest_api)
- [drush-scm](https://github.com/blauerberg/drush-scm)
- [drush-shell-aliases](https://github.com/ModulesUnraveled/Drush-Shell-Aliases)
- [drush_shrinkdb](https://www.drupal.org/project/drush_shrinkdb)
- [drush-snif](https://github.com/mcdruid/drush-snif)
- [drush_sql_sync_pipe](https://www.drupal.org/project/drush_sql_sync_pipe)
- [drush_switch](https://www.drupal.org/sandbox/adubovskoy/2841348)
- [drush_taxonomyinfo](https://www.drupal.org/project/drush_taxonomyinfo)
- [drush_typeinfo](https://www.drupal.org/project/drush_typeinfo)
- [dslm](https://www.drupal.org/project/dslm)
- [extra_siteinfo](https://www.drupal.org/project/extra_siteinfo)
- [file_permissions](https://www.drupal.org/project/file_permissions)
- [grn](https://www.drupal.org/project/grn)
- [prod_check](https://www.drupal.org/project/prod_check)
- [puppet_drush](https://www.drupal.org/project/puppet_drush)
- [sar](https://github.com/larowlan/sar)
- [settingsphp](https://www.drupal.org/project/settingsphp)
- [site_audit](https://www.drupal.org/project/site_audit)
- [syncdbc](https://github.com/juampynr/syncdb)

See the [Dockerfile](https://github.com/theodorosploumis/drush-plugins/blob/master/Dockerfile) for more info.

## New Plugins

Open an [issue](https://github.com/theodorosploumis/drush-plugins/issues/new) to propose adding a new drush plugin.

## Resources

Docker image is based on [ricardoamaro/drupal8](https://hub.docker.com/r/ricardoamaro/drupal8/) image.

## License

[GNU GPL v2](https://github.com/theodorosploumis/drush-plugins/blob/master/LICENSE)
