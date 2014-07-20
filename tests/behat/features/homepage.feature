Feature: Homepage
  In order to quickly gain an overview on the site's offerings
  As a site visitor
  I want to see featured content, latest news and a welcome message

  Background:
    Given I am on the homepage

  Scenario: Welcome
    Then I should see the heading "Welcome"

  Scenario: Main Content
    Then I should see "Cras justo odio, dapibus ac facilisis in, egestas eget quam." in the "Content" region
