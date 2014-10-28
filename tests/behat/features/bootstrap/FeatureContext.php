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
    $user = user_load($this->user->uid);
    assertTrue(user_access($permission, $user));
  }

  /**
   * @Then /^I should not have the "([^"]*)" permission$/
   */
  public function iShouldNotHaveThePermission($permission) {
    $user = user_load($this->user->uid);
    assertFalse(user_access($permission, $user));
  }
}
