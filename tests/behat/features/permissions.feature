Feature: Permissions
  In order to enforce proper user access control
  The install profile should create user roles with permissions matching their applicable level of access.

  @api
  Scenario: Authenticated User Admin Menu
    Given I am logged in as a user with the "authenticated user" role
    Then I should see the admin menu
    And I should see the link "Home" in the "Admin Menu" region
    But I should not see the link "Content" in the "Admin Menu" region
    But I should not see the link "Structure" in the "Admin Menu" region
    And I should not see the link "Appearance" in the "Admin Menu" region
    And I should not see the link "People" in the "Admin Menu" region
    And I should not see the link "Configuration" in the "Admin Menu" region
    And I should not see the link "Reports" in the "Admin Menu" region

  @api
  Scenario: Editor Admin Menu
    Given I am logged in as a user with the "editor" role
    Then I should see the admin menu
    And I should see the link "Home" in the "Admin Menu" region
    And I should see the link "Add content" in the "Admin Menu" region
    But I should not see the link "Structure" in the "Admin Menu" region
    And I should not see the link "Appearance" in the "Admin Menu" region
    And I should not see the link "People" in the "Admin Menu" region
    And I should not see the link "Configuration" in the "Admin Menu" region
    And I should not see the link "Reports" in the "Admin Menu" region

  @api
  Scenario: Administrator Admin Menu
    Given I am logged in as a user with the "administrator" role
    Then I should see the admin menu
    And I should see the link "Home" in the "Admin Menu" region
    And I should see the link "Content" in the "Admin Menu" region
    And I should see the link "Structure" in the "Admin Menu" region
    And I should see the link "Appearance" in the "Admin Menu" region
    And I should see the link "People" in the "Admin Menu" region
    And I should see the link "Configuration" in the "Admin Menu" region
    And I should see the link "Reports" in the "Admin Menu" region
