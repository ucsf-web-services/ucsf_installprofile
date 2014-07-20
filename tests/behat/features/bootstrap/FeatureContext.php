<?php
use Behat\Behat\Exception\PendingException;
use Drupal\DrupalExtension\Context\DrupalContext;

/**
 * Features context.
 */
class FeatureContext extends DrupalContext
{
    /**
     * @Given /^I am on the home page$/
     */
    public function iAmOnTheHomePage()
    {
        $this->assertHomepage();
    }
}
