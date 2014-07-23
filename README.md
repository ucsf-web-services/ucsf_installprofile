[![Build Status](https://travis-ci.org/ucsf-drupal/ucsf_installprofile.svg?branch=7.x-1.x)](https://travis-ci.org/ucsf-drupal/ucsf_installprofile) 
[![Sauce Test Status](https://saucelabs.com/buildstatus/ucsfdrupal)](https://saucelabs.com/u/ucsfdrupal)

# UCSF Starter Kit

This is the Drupal installation profile for UCSF Starter Kit sites.

## Building the profile

Building a full distro of this profile requires Drush 6 or up.

### Deployment Build

```bash
# Get the codebase.
git clone --branch 7.x-1.x https://github.com/ucsf-drupal/ucsf_installprofile.git
# Enter your local repo
cd ucsf_installprofile
# build drupal and the profile into the webroot dir
drush make --prepare-install make/build-ucsf_installprofile.make webroot
# build modules/themes/libs into a temp dir
drush make --no-cache --contrib-destination="." --no-core make/drupal-org.make tmp
# move the temp directory's content into sites/all
cp -r tmp/* webroot/sites/all/
# delete temp dir
rm -rf tmp
```

### Development Build

Use the `*-dev.make` files instead of the regular ones.

This will check out the HEAD of the profiles current branch as well as the HEADS of all custom themes and modules from their
respective repos from GitHub.

```bash
git clone --branch 7.x-1.x https://github.com/ucsf-drupal/ucsf_installprofile.git
cd ucsf_installprofile
drush make --prepare-install make/build-ucsf_installprofile-dev.make webroot
drush make --no-cache --no-core make/drupal-org-dev.make tmp
cp -r tmp/* webroot/sites/all/
rm -rf tmp
```

## Installation

Installing the profile can be done using Drupal's default web installer or via Drush.

For example:

```bash
cd webroot
drush site-install ucsf_installprofile --db-url="mysql://DBUSER:DBPASS@localhost/DBNAME"
```

