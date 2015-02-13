<?php

use Behat\Behat\Context\Context;
use Behat\Behat\Tester\Exception\PendingException;
use Behat\Testwork\Hook\Scope\BeforeSuiteScope;
use Drupal\DrupalExtension\Context\RawDrupalContext;
use Drupal\DrupalExtension\Context\MinkContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;


require_once 'PHPUnit/Autoload.php';
require_once 'PHPUnit/Framework/Assert/Functions.php';

/**
 * Features context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct() {
  }

  /**
   * @BeforeSuite
   */
  public static function prepare(BeforeSuiteScope $scope) {
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
  public function iAmOnTheHomePage() {
    $this->assertHomepage();
  }

  /**
   * @Then /^I should see the admin menu$/
   */
  public function iShouldSeeTheAdminMenu() {
    $regionObj = $this->getRegion("Admin Menu");
    assertTrue($regionObj->isVisible());
  }

  /**
   * @Given /^I resize the window to "(\d+)" by "(\d+)"$/
   */
  public function iResizeWindow($width, $height) {
    $this->getSession()->resizeWindow((int) $width, (int) $height);
    $foo =1;
  }

  /**
   * @Then /^I should see the "([^"]*)" region$/
   */
  public function iShouldSeeTheRegion($region) {
    $regionObj = $this->getRegion($region);
    if (!$regionObj->isVisible()) {
      throw new \Exception(sprintf('Region "%s" on the page %s is not visible.', $region, $this->getSession()
            ->getCurrentUrl()));
    }
  }

  /**
   * @Given /^I should not see the "([^"]*)" region$/
   */
  public function iShouldNotSeeTheRegion($region) {
    $regionObj = $this->getRegion($region);
    if ($regionObj->isVisible()) {
      throw new \Exception(sprintf('Region "%s" on the page %s is visible.', $region, $this->getSession()
            ->getCurrentUrl()));
    }
  }

  /**
   * @Given /^I should see the mobile navigation hamburger$/
   */
  public function iShouldSeeTheMobileNavigationHamburger() {
    $elem = $this->getSession()->getPage()->find('css', '#mobile-link');
    if (! $elem->isVisible()) {
      throw new \Exception(sprintf('Mobile navigation hamburger on the page %s is not visible.',
        $this->getSession()->getCurrentUrl()));
    }
  }

  /**
   * @Given /^I should see today\'s date formatted like "([^"]*)" in the "([^"]*)" region$/
   */
  public function iShouldSeeTodaySDateInTheRegion($date_format, $region) {
    $text = date($date_format);
    $regionObj = $this->getRegion($region);

    // Find the text within the region
    $regionText = $regionObj->getText();
    if (strpos($regionText, $text) === FALSE) {
      throw new \Exception(sprintf("The text '%s' was not found in the region '%s' on the page %s", $text, $region, $this->getSession()->getCurrentUrl()));
    }
  }

  /**
   * @Then /^I should see a slideshow in the "([^"]*)" region$/
   */
  public function iShouldSeeASlideshowInTheRegion($region) {
    $regionObj = $this->getRegion($region);
    $elem = $regionObj->find('css', '.flexslider');
    if (! $elem) {
      throw new \Exception(sprintf('No slideshow found in "%s" region',
        $region));
    }
  }

  /**
   * Return a region from the current page.
   *
   * @throws \Exception
   *   If region cannot be found.
   *
   * @param string $region
   *   The machine name of the region to return.
   *
   * @return \Behat\Mink\Element\NodeElement
   *
   * @see \Drupal\DrupalExtension\Context\MinkContext::getRegion()
   *
   * Copied verbatim from the MinkContext's method b/c there's no way to call it anymore.
   * @link https://www.drupal.org/node/2370729#comment-9320477
   */
  public function getRegion($region) {
    $session = $this->getSession();
    $regionObj = $session->getPage()->find('region', $region);
    if (!$regionObj) {
      throw new \Exception(sprintf('No region "%s" found on the page %s.', $region, $session->getCurrentUrl()));
    }

    return $regionObj;
  }
}
