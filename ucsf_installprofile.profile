<?php
/**
 * Implements hook_form_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function ucsf_installprofile_form_install_configure_form_alter(&$form, $form_state) {
  drupal_get_messages('status', TRUE);
  drupal_get_messages('completed', TRUE);
  // Set a default name for the dev site and change title's label.
  $form['site_information']['site_name']['#title'] = 'Site name';
  $form['site_information']['site_mail']['#title'] = 'Administrator email address';
  $form['site_information']['site_name']['#default_value'] = t('UCSF Template');
  $form['site_information']['site_mail']['#default_value'] = 'webservices@ucsf.edu';

  // Set a default country
  $form['server_settings']['site_default_country']['#default_value'] = 'US';

  // Use "admin" as the default username.
  $form['admin_account']['account']['name']['#default_value'] = 'ucsf_admin';

  // Set the default admin password.
  $form['admin_account']['account']['pass']['#value'] = 'temp01';

  // Hide Update Notifications.
  $form['update_notifications']['#access'] = FALSE;

  // Add informations about the default username and password.
  $form['admin_account']['account']['antho_kickstart_name'] = array(
    '#type' => 'item', '#title' => st('Username'),
    '#markup' => 'ucsf_admin'
  );
  $form['admin_account']['account']['antho_kickstart_password'] = array(
    '#type' => 'item', '#title' => st('Password'),
    '#markup' => 'temp01'
  );
  $form['admin_account']['account']['antho_kickstart_informations'] = array(
    '#markup' => '<p>' . t('This information will be emailed to the Administrator email address.') . '</p>'
  );
  $form['admin_account']['override_account_informations'] = array(
    '#type' => 'checkbox',
    '#title' => t('Change my username and password.'),
  );
  $form['admin_account']['setup_account'] = array(
    '#type' => 'container',
    '#parents' => array('admin_account'),
    '#states' => array(
      'invisible' => array(
        'input[name="override_account_informations"]' => array('checked' => FALSE),
      ),
    ),
  );

  // Make a "copy" of the original name and pass form fields.
  $form['admin_account']['setup_account']['account']['name'] = $form['admin_account']['account']['name'];
  $form['admin_account']['setup_account']['account']['pass'] = $form['admin_account']['account']['pass'];
  $form['admin_account']['setup_account']['account']['pass']['#value'] = array('pass1' => 'temp01', 'pass2' => 'temp01');

  // Use "admin" as the default username.
  $form['admin_account']['account']['name']['#default_value'] = 'ucsf_admin';
  $form['admin_account']['account']['name']['#access'] = FALSE;

  // Set the default admin password.
  $form['admin_account']['account']['pass']['#value'] = 'temp01';

  // Make the password "hidden".
  $form['admin_account']['account']['pass']['#type'] = 'hidden';
  $form['admin_account']['account']['mail']['#access'] = FALSE;

  // Add a custom validation that needs to be trigger before the original one,
  // where we can copy the site's mail as the admin account's mail.
  array_unshift($form['#validate'], 'ucsf_installprofile_custom_setting');

}

/**
 * Validate callback; Populate the admin account mail, user and password with
 * custom values.
 */
function ucsf_installprofile_custom_setting(&$form, &$form_state) {
  $form_state['values']['account']['mail'] = $form_state['values']['site_mail'];
  // Use our custom values only the corresponding checkbox is checked.
  if ($form_state['values']['override_account_informations'] == TRUE) {
    if ($form_state['input']['pass']['pass1'] == $form_state['input']['pass']['pass2']) {
      $form_state['values']['account']['name'] = $form_state['values']['name'];
      $form_state['values']['account']['pass'] = $form_state['input']['pass']['pass1'];
    }
    else {
        form_set_error('pass', t('The specified passwords do not match.'));
      }
  }
}

/**
 * Implements hook_form_FORM_ID_alter().
 * Set UCSF Installprofile as the default profile.
 * @link https://drupal.org/comment/6265432#comment-6265432
 */
if (!function_exists('system_form_install_select_profile_form_alter')) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'ucsf_installprofile';
    }
  }
}
else if (!function_exists('filter_form_install_select_profile_form_alter')) {
  function filter_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'ucsf_installprofile';
    }
  }
}
