Feature: Banner Navigation
  In order to quickly access the main UCSF website and other affiliated sites of general interest
  As a site visitor
  I want to see the branded UCSF banner navigation on all pages

  Background:
    Given I am on the homepage

  Scenario: See the UCSF banner navigation
    And I should see the link "University of California, San Francisco" in the "Top Header" region
    And I should see the link "About UCSF" in the "Top Header" region
    And I should see the link "Search UCSF" in the "Top Header" region
    And I should see the link "UCSF Medical Center" in the "Top Header" region

  Scenario: Follow "University of California, San Francisco" link in the UCSF banner navigation
    And I follow "University of California, San Francisco" in the "Top Header" region
    Then I should be on "http://www.ucsf.edu/"

  Scenario: Follow "About UCSF" link in the UCSF banner navigation
    And I follow "About UCSF" in the "Top Header" region
    Then I should be on "http://www.ucsf.edu/about"

  Scenario: Follow "Search UCSF" link in the UCSF banner navigation
    And I follow "Search UCSF" in the "Top Header" region
    Then I should be on "http://www.ucsf.edu/search"

  Scenario: Follow "UCSF Medical Center" link in the UCSF banner navigation
    And I follow "UCSF Medical Center" in the "Top Header" region
    Then I should be on "http://www.ucsfhealth.org/"
