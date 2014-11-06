Feature: Main Navigation
  In order to quickly gain access to the site's main sections
  As a site visitor
  I want to be able to see and use the main navigation menu on all pages

  Background:
    Given I am on the homepage

  Scenario: See the main navigation
    Then I should see the link "Home" in the "Header" region
    And I should see the link "News" in the "Header" region
    And I should see the link "About" in the "Header" region
    And I should see the link "Events" in the "Header" region
    And I should see the link "Services" in the "Header" region
    And I should see the link "Styleguide" in the "Header" region

  Scenario Outline: Follow link in main navigation
    When I follow "<link>" in the "Header" region
    Then I should be on "<path>"

    Examples:
      | link       | path        |
      | Home       | /           |
      | News       | /news       |
      | About      | /about      |
      | Events     | /events     |
      | Services   | /services   |
      | Styleguide | /styleguide |


  # TODO: Figure out a way to resize the window to its original dimensions after running this scenario. [ST 2014/11/05]
  Scenario: See hamburger instead of main nav on mobile
    When I resize the window to "200" by "600"
    Then I should not see the "Header" region
    But I should see the mobile navigation hamburger
