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

  Scenario: Blocks In sidebars
    Then I should see the heading "Callout Box" in the "Sidebar Second" region
    And I should see the heading "News" in the "Sidebar Second" region

  Scenario: Slideshow present
    Then I should see a slideshow in the "Page Container" region
