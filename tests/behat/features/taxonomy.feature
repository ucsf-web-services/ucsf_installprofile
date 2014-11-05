Feature: Taxonomy
  In order to structure content
  As a content provider
  I want to be able to classify content using taxonomy terms


#  When I visit "event-location/ucsf-medical-building-room-202"

  @api
  Scenario: Verify pre-installed taxonomy terms
    And I am logged in as a user with the "administrator" role
    When I visit "admin/structure/taxonomy/event_location"
    Then I should see "UCSF Medical Building Room 201"
    And I should see "UCSF Medical Building Room 202"
    And I should see "UCSF Medical Building Room 203"

  @api
  Scenario: Verify pre-installed events with taxonomy terms
    Given I am an anonymous user
    When I visit "event-location/ucsf-medical-building-room-201"
    Then I should see the heading "UCSF Medical Building Room 201"
    And I should see the link "This is an example of a very very very long title to express what happens"
    And I should see the link "Event 4"

  @api
  Scenario: Create an Event Location taxonomy term
    Given "Event Location" terms:
      | name        |
      | Cole Hall   |
    When I visit "event-location/cole-hall"
    Then I should see the heading "Cole Hall"

  @api
  Scenario: Create an event node with location term
    Given "Event Location" terms:
      | name        |
      | Cole Hall   |
    And  I am logged in as a user with the "administrator" role
    And I am on "node/add"
    And I follow "Events"
    And I enter "My test Event" for "title"
    And I select "Plain text" from "body[und][0][format]"
    And I enter "Lorem Ipsum" for "body[und][0][value]"
    And I enter "Cole Hall" for "Location"
    And I press "Save"
    When I visit "event-location/cole-hall"
    Then I should see the link "My test Event"
