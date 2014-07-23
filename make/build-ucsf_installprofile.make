core = 7.x
api = 2

includes[core] = drupal-org-core.make

; Profile
; ----------------------------------------------------------------
projects[ucsf_installprofile][download][type] = "git"
projects[ucsf_installprofile][download][url] = "https://github.com/ucsf-drupal/ucsf_installprofile.git"
projects[ucsf_installprofile][download][tag] = "7.x-1.0"
;projects[ucsf_installprofile][download][branch] = "7.x-1.x"
projects[ucsf_installprofile][type] = "profile"
