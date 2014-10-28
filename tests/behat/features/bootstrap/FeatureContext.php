<?php
use Behat\Behat\Exception\PendingException;
use Drupal\DrupalExtension\Context\DrupalContext;
use Behat\Behat\Event\SuiteEvent;


require_once 'PHPUnit/Autoload.php';
require_once 'PHPUnit/Framework/Assert/Functions.php';

/**
 * Features context.
 */
class FeatureContext extends DrupalContext
{


  /**
   * @BeforeSuite
   */
  public static function prepare(SuiteEvent $event)
  {
    /*
     * Kludge!
     * see https://www.drupal.org/node/2023625#comment-8607207
     * [ST 2014/10/27]
     */
    variable_set('admin_menu_cache_client', FALSE);
  }

  /**
   * @Given /^I am on the home page$/
   */
  public function iAmOnTheHomePage()
  {
    $this->assertHomepage();
  }

  /**
   * @Then /^I should have the "([^"]*)" permission$/
   */
  public function iShouldHaveThePermission($permission) {
    $user = null;
    if ($this->user) {
      $user = user_load($this->user->uid);
    }
    assertTrue(user_access($permission, $user));
  }

  /**
   * @Then /^I should not have the "([^"]*)" permission$/
   */
  public function iShouldNotHaveThePermission($permission) {
    $user = null;
    if ($this->user) {
      $user = user_load($this->user->uid);
    }
    assertFalse(user_access($permission, $user));
  }


  /**
   * @Then /^I should see the admin menu$/
   */
  public function iShouldSeeTheAdminMenu() {
    $regionObj = $this->getRegion("Admin Menu");
    assertTrue($regionObj->isVisible());
  }

  /**
   * @Then /^I should have full permissions$/
   */
  public function iShouldHaveFullPermissions() {

    // get all permissions
    $all_permissions = module_invoke_all('permission');
    $all_permission_names = array_keys($all_permissions);
    sort($all_permission_names);

    // get all permissions for the current user's role
    $role_name = $this->user->role;
    $role = user_role_load_by_name($role_name);
    $user_permissions = user_role_permissions(array($role->rid => $role->name));
    $user_permission_names = array_keys($user_permissions[$role->rid]);
    sort($user_permission_names);

    // compare all perms with admin perms
    $delta = array_diff($all_permission_names, $user_permission_names);
    sort($delta);

    // perms that are assumed to always be disabled
    $disabled_perms = array();

    // Webedit module yanks this permission on flush caches
    $disabled_perms[] = 'use text format webedit_paste';

    // there should only be disabled perms left at this point
    assertEquals($disabled_perms, $delta);
  }
}
