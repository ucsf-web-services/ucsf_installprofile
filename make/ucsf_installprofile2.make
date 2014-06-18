; Drush make file for the UCSF Starter Kit installation profile
; ===================================

core = 7.x
api = 2

projects[drupal][version] = "7.28"

; Contributed modules
; ----------------------------------------------------------------

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.4"
projects[ctools][type] = "module"

projects[pasteformat][subdir] = "contrib"
projects[pasteformat][version] = "1.5"
projects[pasteformat][type] = "module"

projects[features][subdir] = "contrib"
projects[features][version] = "1.0"
projects[features][type] = "module"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"
projects[strongarm][type] = "module"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.4"
projects[entity][type] = "module"

projects[views][subdir] = "contrib"
projects[views][version] = "3.8"
projects[views][type] = "module"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.2"
projects[views_bulk_operations][type] = "module"

projects[date][subdir] = "contrib"
projects[date][version] = "2.7"
projects[date][type] = "module"

projects[date_api][subdir] = "contrib"
projects[date_api][version] = "2.7"
projects[date_api][type] = "module"

projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = "3.0-rc4"
projects[admin_menu][type] = "module"

projects[admin_views][subdir] = "contrib"
projects[admin_views][version] = "1.3"
projects[admin_views][type] = "module"

projects[block_class][subdir] = "contrib"
projects[block_class][version] = "1.2"
projects[block_class][type] = "module"

projects[menu_block][subdir] = "contrib"
projects[menu_block][version] = "2.3"
projects[menu_block][type] = "module"

project[ckeditor_link][subdir] = "patched"
project[ckeditor_link][version] = "2.3"
project[ckeditor_link][type] = "module"
project[ckeditor_link][patch][] = "https://drupal.org/files/issues/ckeditor_link-autocomplete_on_return_validate-2178379.patch"

project[node_edit_protection][subdir] = "patched"
project[node_edit_protection][version] = "1.0"
project[node_edit_protection][type] = "module"
project[node_edit_protection][patch][] = "https://drupal.org/files/issues/wysiwyg_protection-1276370-1.patch"

; Contributed themes
; ----------------------------------------------------------------

; Custom modules
; ----------------------------------------------------------------
projects[ucsf_images][download][type] = "git"
projects[ucsf_images][download][url] = "git@bitbucket.org:ucsfdrupal/ucsf_images.git"
projects[ucsf_images][download][tag] = "7.x-2.0-beta6"
projects[ucsf_images][type] = "module"
projects[ucsf_images][subdir] = "custom"
projects[ucsf_images][version] = "2.0-beta6"

projects[ucsf_starterkit_images][download][type] = "git"
projects[ucsf_starterkit_images][download][url] = "git@bitbucket.org:ucsfdrupal/ucsf_starterkit_images.git"
projects[ucsf_starterkit_images][download] = "7.x-1.1-beta6"
projects[ucsf_starterkit_images][type] = "module"
projects[ucsf_starterkit_images][subdir] = "custom"
projects[ucsf_starterkit_images][version] = "1.1-beta6"

projects[ucsf_webedit][download][type] = "git"
projects[ucsf_webedit][download][url] = "git@bitbucket.org:ucsfdrupal/ucsf_webedit.git"
projects[ucsf_webedit][download][tag] = "7.x-1.0-beta10"
projects[ucsf_webedit][type] = "module"
projects[ucsf_webedit][subdir] = "custom"
projects[ucsf_webedit][version] = "1.0-beta10"

; Custom themes
; ----------------------------------------------------------------
projects[orange][download][type] = "git"
projects[orange][download][url] = "git@bitbucket.org:ucsfdrupal/orange.git"
projects[orange][download][branch] = "master"
projects[orange][type] = "theme"

projects[teal][download][type] = "git"
projects[teal][download][url] = "git@bitbucket.org:ucsfdrupal/teal.git"
projects[teal][download][branch] = "master"
projects[teal][type] = "theme"

projects[ucsf_base][download][type] = "git"
projects[ucsf_base][download][url] = "git@bitbucket.org:ucsfdrupal/ucsf_base.git"
projects[ucsf_base][download][branch] = "master"
projects[ucsf_base][type] = "theme"

; Libraries
; ----------------------------------------------------------------

; Profiles
; ----------------------------------------------------------------
projects[ucsf_installprofile2][download][type] = "git"
projects[ucsf_installprofile2][download][url] = "git@bitbucket.org:ucsfdrupal/ucsf_installprofile2.git"
projects[ucsf_installprofile2][branch] = "master"
projects[ucsf_installprofile2][type] = "profile"

