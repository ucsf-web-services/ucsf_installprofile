; Drush make file for the UCSF Starter Kit installation profile
; ===================================

core = 7.x
api = 2

; Drupal core
; ----------------------------------------------------------------
projects[drupal][version] = "7.28"

; Contributed modules
; ----------------------------------------------------------------

; Contributed themes
; ----------------------------------------------------------------

; Custom modules
; ----------------------------------------------------------------

; Custom themes
; ----------------------------------------------------------------

; Libraries
; ----------------------------------------------------------------

; Profiles
; ----------------------------------------------------------------
projects[ucsf_installprofile2][type] = "profile"
projects[ucsf_installprofile2][download][type] = "git"
projects[ucsf_installprofile2][download][url] = "git@bitbucket.org:ucsfdrupal/ucsf_installprofile2.git"
projects[ucsf_installprofile2][branch] = master
;projects[ucsf_installprofile2][tag] = 7.x-1.0
