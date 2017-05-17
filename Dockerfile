FROM ricardoamaro/drupal8:latest

MAINTAINER TheodorosPloumis <me[at]theodorosploumis.com>

ENV DEBIAN_FRONTEND noninteractive

# Install plugins with drush
RUN drush dl -y prod_check \
                destination_alter \
                drush_shrinkdb \
                dev_modules \
                composer-8 \
                settingsphp \
                extra_siteinfo \
                grn \
                file_permissions \
                drush_sql_sync_pipe

# Install plugins with git
RUN git clone --branch 8.x-3.x https://git.drupal.org/project/site_audit.git /root/.druh/site_audit && \
    git clone --branch 8.x-1.x https://git.drupal.org/project/drush_typeinfo.git /root/.drush/drush_typeinfo && \
    git clone --branch 8.x-1.x https://git.drupal.org/project/drush_taxonomyinfo.git /root/.drush/drush_taxonomyinfo && \
    git clone --branch 8.x-6.x https://git.drupal.org/project/drush_entity.git /root/.drush/drush_entity && \
    git clone --branch 8.x-1.x https://git.drupal.org/sandbox/adubovskoy/2841348.git /root/.drush/drush_switch && \
    git clone --branch 8.x-1.x https://git.drupal.org/sandbox/mbovan/2848528.git /root/.drush/drush_patch_upload && \

    git clone --branch 7.x-3.x https://git.drupal.org/project/dslm.git /root/.drush/dslm && \
    git clone --branch 7.x-2.x https://git.drupal.org/project/drush_iq.git /root/.drush/drush_iq && composer install -d /root/.drush/drush_iq && \
    git clone --branch 7.x-1.x https://git.drupal.org/project/drush_hosts.git /root/.drush/drush_hosts && \
    git clone --branch 7.x-1.x https://git.drupal.org/project/check.git /root/.drush/check && \
    git clone --branch 1.0.x https://git.drupal.org/project/puppet-drush.git /root/.drush/puppet-drush && \
    git clone --branch master https://git.drupal.org/project/drush-rest-api.git /root/.drush/drush-rest-api && \

    git clone https://bitbucket.org/davereid/drush-patchfile.git /root/.drush/drush-patchfile && \
    git clone https://github.com/johnennewdeeson/drush-multi-processing.git /root/.drush/drush-multi-processing && \
    git clone https://github.com/reload/deployotron.git /root/.drush/deployotron && \
    git clone https://github.com/previousnext/drush_cmi_tools.git /root/.drush/drush_cmi_tools && \
    git clone https://github.com/dman-coders/drush_get.git /root/.drush/drush_get && \
    git clone https://github.com/blauerberg/drush-scm.git /root/.drush/drush-scm && \
    git clone https://github.com/Chi-teck/extension-configuration.git /root/.drush/extension-configuration && \
    git clone https://github.com/larowlan/sar.git /root/.drush/sar && \
    git clone https://github.com/mcdruid/drush-snif.git /root/.drush/drush-snif && \
    git clone https://github.com/gapple/drush-filesync.git /root/.drush/drush-filesync

# Install plugins with composer
RUN composer require droath/drush-module-sync \
                     juampynr/syncdb \
                     drush/config-extra \
                     smalot/cerbere:dev-master \
                     clever-systems/drush_msync \
                     modules-unraveled/drush-shell-aliases

# Clear drush caches
RUN drush cc drush

# Change issues link
RUN sed -i 's/ricardoamaro\/drupal8-docker-app/theodorosploumis\/drush-plugins/' /start.sh

VOLUME /root/.drush
