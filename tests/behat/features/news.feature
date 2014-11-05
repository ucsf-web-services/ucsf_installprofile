Feature:
  In order to provide relevant news to my site's audience
  As a content provider
  I want to be able to create and publish news on my site

  @api
  Scenario: Create an News node
    Given I am logged in as a user with the "administrator" role
    And I am on "node/add"
    And I follow "News"
    And I enter "My test News" for "title"
    And I select "Plain text" from "body[und][0][format]"
    And I enter "Lorem Ipsum" for "body[und][0][value]"
    And I press "Save"
    Then I should see the success message "News My test News has been created."
    And I should see the heading "My test News"
    And I should see "Lorem Ipsum" in the "Content" region

  @api
  Scenario: News View
    Given I am logged in as a user with the "administrator" role
    And I am on "node/add"
    And I follow "News"
    And I enter "Yet another news Item" for "title"
    And I select "Plain text" from "body[und][0][format]"
    And I enter "Lorem Ipsum" for "body[und][0][value]"
    And I press "Save"
    When I visit "news"
    Then I should see the link "Yet another news Item" in the "Page Container" region
    And I follow "Yet another news Item"
    Then I should be on "news/yet-another-news-item"
