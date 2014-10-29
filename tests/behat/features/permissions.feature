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
    And I should have the "access PDF version" permission
    And I should have the "access print" permission
    And I should have the "access send by email" permission
    And I should have the "search content" permission
    And I should have the "use text format comments" permission

  @api
  Scenario: Authenticated User Permissions
    Given I am logged in as a user with the "authenticated user" role
    Then I should have the "access administration menu" permission
    And I should have the "access comments" permission
    And I should have the "access content" permission
    And I should have the "access PDF version" permission
    And I should have the "access print" permission
    And I should have the "access send by email" permission
    And I should have the "post comments" permission
    And I should have the "search content" permission
    And I should have the "use text format comments" permission

  @api
  Scenario: Editor Permissions
    Given I am logged in as a user with the "editor" role
    Then I should have the "access administration menu" permission
    And I should have the "access comments" permission
    And I should have the "access content overview" permission
    And I should have the "access content" permission
    And I should have the "access contextual links" permission
    And I should have the "access PDF version" permission
    And I should have the "access print" permission
    And I should have the "access send by email" permission
    And I should have the "access site in maintenance mode" permission
    And I should have the "administer comments" permission
    And I should have the "administer nodes" permission
    And I should have the "create events content" permission
    And I should have the "create news content" permission
    And I should have the "create page content" permission
    And I should have the "delete any events content" permission
    And I should have the "delete any news content" permission
    And I should have the "delete any page content" permission
    And I should have the "delete own events content" permission
    And I should have the "delete own news content" permission
    And I should have the "delete own page content" permission
    And I should have the "edit any events content" permission
    And I should have the "edit any news content" permission
    And I should have the "edit any page content" permission
    And I should have the "edit own comments" permission
    And I should have the "edit own events content" permission
    And I should have the "edit own news content" permission
    And I should have the "edit own page content" permission
    And I should have the "flush caches" permission
    And I should have the "post comments" permission
    And I should have the "search content" permission
    And I should have the "skip comment approval" permission
    And I should have the "use text format comments" permission
    And I should have the "use text format webedit" permission
    And I should have the "view the administration theme" permission
  @api
  Scenario: Admin Permissions
    Given I am logged in as a user with the "administrator" role
    Then I should have full permissions
