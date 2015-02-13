Feature:
  In order to promote events
  As a content provider
  I want to be able to create and publish events on my site

  @api
  Scenario: Create an Event
    And  I am logged in as a user with the "administrator" role
    And I am on "node/add"
    And I follow "Events"
    And I enter "My test Event" for "title"
    And I select "Plain text" from "body[und][0][format]"
    And I enter "Lorem Ipsum" for "body[und][0][value]"
    And I enter "Cole Hall" for "Location"
    And I enter "http://drupal.org/news" for "URL"
    And I press "Save"
    Then I should see the success message "Events My test Event has been created."
    And I should see the heading "My test Event"
    And I should see "Cole Hall" in the "Content" region
    And I should see "Lorem Ipsum" in the "Content" region
    And I should see today's date formatted like "F j, Y" in the "Content" region
    And I should see the link "Map" in the "Content" region
    When I follow "Map"
    Then the url should match "/news"

  @api
  Scenario: Path generation
    Given "Events" content:
      | title     | body    |
      | Some Name | Foo bar |
    When I visit "events/some-name"
    Then I should see the heading "Some Name"
