# UCSF Starter Kit

This is the Drupal installation profile for UCSF Starter Kit sites.

## Build and installation

This requires Drush version 6 or up.

Create a full version with drush make:

```bash
#
# Get the codebase.
# Note: For production deployments, please checkout out the lastest stable release tag.
#
git clone --branch 7.x-1.x https://github.com/ucsf-drupal/ucsf_installprofile.git

cd ucsf_installprofile
#
# build the distribution
#
drush make --prepare-install make/ucsf_installprofile.make webroot
# for development purposes, run the dev makefile instead
# drush make --prepare-install make/ucsf_installprofile-dev.make webroot

cd webroot
#
# install a site using the distro
#
drush site-install ucsf_installprofile --db-url="mysql://DBUSER:DBPASS@localhost/DBNAME"
```
