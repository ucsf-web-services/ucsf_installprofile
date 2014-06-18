; Drush make file for the UCSF Starter Kit installation profile
; ===================================

core = 7.x
api = 2

projects[drupal][version] = "7.28"

; Contributed modules
; ----------------------------------------------------------------

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

