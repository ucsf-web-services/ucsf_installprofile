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

  @api
  Scenario: Anonymous Permissions
    Given I am an anonymous user
    Then I should have the "access content" permission
    And I should have the "access comments" permission
    And I should have the "search content" permission
    And I should have the "access PDF version" permission
    And I should have the "access print" permission
    And I should have the "access send by email" permission
    And I should have the "use text format comments" permission
    But I should not have the "create content" permission

  @api
  Scenario Outline: Role Permissions
    Given I am logged in as a user with the "<role>" role
    Then I should have the "<permission>" permission

    Examples:
      | role | permission |
      | authenticated user | access administration menu |
      | authenticated user | access comments |
      | authenticated user | access content |
      | authenticated user | access PDF version |
      | authenticated user | access print |
      | authenticated user | access send by email |
      | authenticated user | post comments |
      | authenticated user | search content |
      | authenticated user | skip comment approval |
      | authenticated user | use text format comments |
      | editor | access administration menu |
      | editor | access comments |
      | editor | access content overview |
      | editor | access content |
      | editor | access contextual links |
      | editor | access PDF version |
      | editor | access print |
      | editor | access send by email |
      | editor | access site in maintenance mode |
      | editor | administer comments |
      | editor | administer nodes |
      | editor | create events content |
      | editor | create news content |
      | editor | create page content |
      | editor | delete any events content |
      | editor | delete any news content |
      | editor | delete any page content |
      | editor | delete own events content |
      | editor | delete own news content |
      | editor | delete own page content |
      | editor | edit any events content |
      | editor | edit any news content |
      | editor | edit any page content |
      | editor | edit own comments |
      | editor | edit own events content |
      | editor | edit own news content |
      | editor | edit own page content |
      | editor | flush caches |
      | editor | post comments |
      | editor | search content |
      | editor | skip comment approval |
      | editor | use text format comments |
      | editor | use text format webedit |
      | editor | view the administration theme |

  @api
  Scenario: Admin Permissions
    Given I am logged in as a user with the "administrator" role
    Then I should have full permissions
