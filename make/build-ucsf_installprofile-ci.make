core = 7.x
api = 2

includes[core] = drupal-org-core.make

; Profile
; ----------------------------------------------------------------
projects[ucsf_installprofile][download][type] = "git"
projects[ucsf_installprofile][download][url] = "https://github.com/%TRAVIS_REPO_SLUG%.git"
projects[ucsf_installprofile][branch] = "%TRAVIS_BRANCH%"
projects[ucsf_installprofile][type] = "profile"
