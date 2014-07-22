core = 7.x
api = 2

includes[core] = drupal-org-core.make
includes[contrib] = drupal-org.make

; Custom modules
; ----------------------------------------------------------------
projects[ucsf_images][download][type] = "git"
projects[ucsf_images][download][url] = "https://github.com/ucsf-drupal/ucsf_images.git"
projects[ucsf_images][download][tag] = "7.x-2.0-beta6"
;projects[ucsf_images][download][branch] = "7.x-2.x"
projects[ucsf_images][type] = "module"
projects[ucsf_images][subdir] = "custom"

projects[ucsf_starterkit_images][download][type] = "git"
projects[ucsf_starterkit_images][download][url] = "https://github.com/ucsf-drupal/ucsf_starterkit_images.git"
projects[ucsf_starterkit_images][download][tag] = "7.x-1.1-beta6"
;projects[ucsf_starterkit_images][download][branch] = "7.x-1.x"
projects[ucsf_starterkit_images][type] = "module"
projects[ucsf_starterkit_images][subdir] = "custom"

projects[ucsf_webedit][download][type] = "git"
projects[ucsf_webedit][download][url] = "https://github.com/ucsf-drupal/ucsf_webedit.git"
projects[ucsf_webedit][download][tag] = "7.x-1.0-beta11"
;projects[ucsf_webedit][download][branch] = "7.x-1.x"
projects[ucsf_webedit][type] = "module"
projects[ucsf_webedit][subdir] = "custom"

projects[feature_print_module][download][type] = "git"
projects[feature_print_module][download][url] = "https://github.com/ucsf-drupal/feature_print_module.git"
projects[feature_print_module][download][tag] = "7.x-1.0"
;projects[feature_print_module][download][branch] = "7.x-1.x"
projects[feature_print_module][type] = "module"
projects[feature_print_module][subdir] = "custom"

projects[manualcrop_media_wysiwyg][download][type] = "git"
projects[manualcrop_media_wysiwyg][download][url] = "https://github.com/ucsf-drupal/manualcrop_media_wysiwyg.git"
projects[manualcrop_media_wysiwyg][download][tag] = "7.x-1.0-beta1"
;projects[manualcrop_media_wysiwyg][download][branch] = "7.x-1.x"
projects[manualcrop_media_wysiwyg][type] = "module"
projects[manualcrop_media_wysiwyg][subdir] = "custom"

projects[media_browser_edit][download][type] = "git"
projects[media_browser_edit][download][url] = "https://github.com/ucsf-drupal/media_browser_edit.git"
projects[media_browser_edit][download][tag] = "7.x-1.1"
;projects[media_browser_edit][download][branch] = "7.x-1.x"
projects[media_browser_edit][type] = "module"
projects[media_browser_edit][subdir] = "custom"

projects[square_crop][download][type] = "git"
projects[square_crop][download][url] = "https://github.com/ucsf-drupal/square_crop.git"
projects[square_crop][download][tag] = "7.x-1.0"
;projects[square_crop][download][branch] = "7.x-1.x"
projects[square_crop][type] = "module"
projects[square_crop][subdir] = "custom"

projects[ucsftemplate_tweaks][download][type] = "git"
projects[ucsftemplate_tweaks][download][url] = "https://github.com/ucsf-drupal/ucsftemplate_tweaks.git"
projects[ucsftemplate_tweaks][download][tag] = "7.x-1.0"
;projects[ucsftemplate_tweaks][download][branch] = "7.x-1.x"
projects[ucsftemplate_tweaks][type] = "module"
projects[ucsftemplate_tweaks][subdir] = "custom"

; Custom themes
; ----------------------------------------------------------------
projects[orange][download][type] = "git"
projects[orange][download][url] = "https://github.com/ucsf-drupal/orange.git"
projects[orange][download][tag] = "7.x-1.0"
;projects[orange][download][branch] = "7.x-1.x"
projects[orange][type] = "theme"

projects[teal][download][type] = "git"
projects[teal][download][url] = "https://github.com/ucsf-drupal/teal.git"
projects[teal][download][tag] = "7.x-1.0"
;projects[teal][download][branch] = "7.x-1.x"
projects[teal][type] = "theme"

projects[ucsf_base][download][type] = "git"
projects[ucsf_base][download][url] = "https://github.com/ucsf-drupal/ucsf_base.git"
projects[ucsf_base][download][tag] = "7.x-1.0"
;projects[ucsf_base][download][branch] = "7.x-1.x"
projects[ucsf_base][type] = "theme"

; Profile
; ----------------------------------------------------------------
projects[ucsf_installprofile][download][type] = "git"
projects[ucsf_installprofile][download][url] = "https://github.com/ucsf-drupal/ucsf_installprofile.git"
projects[ucsf_installprofile][download][tag] = "7.x-1.0"
;projects[ucsf_installprofile][branch] = "7.x-1.x"
projects[ucsf_installprofile][type] = "profile"
