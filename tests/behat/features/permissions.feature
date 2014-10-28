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
    Then I should have the "<permissions>" permissions

    Examples:
      | role               | permissions                                                                                                                   |
      | authenticated user | access administration menu, access comments, access content, access PDF version, access print, access send by email           |
      | authenticated user | post comments, search content, use text format comments                                                                       |
      | editor             | access administration menu, access comments, access content overview, access content, access contextual links                 |
      | editor             | access PDF version, access print, access send by email, access site in maintenance mode, administer comments                  |
      | editor             | administer nodes, create events content, create news content, create page content, delete any events content                  |
      | editor             | delete any news content, delete any page content, delete own events content, delete own news content, delete own page content |
      | editor             | edit any events content, edit any news content,  edit any page content, edit own comments, edit own events content            |
      | editor             | edit own news content,  edit own page content, flush caches, post comments, search content, skip comment approval             |
      | editor             | use text format comments, use text format webedit, view the administration theme                                              |

  @api
  Scenario: Admin Permissions
    Given I am logged in as a user with the "administrator" role
    Then I should have full permissions
