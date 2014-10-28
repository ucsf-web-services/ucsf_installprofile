Feature: Permissions
  In order to enforce proper user access control
  The install profile should create user roles with permissions matching their applicable level of access.

  @api
  Scenario: Editor
    Given I am logged in as a user with the "editor" role
    Then I should have the "access administration menu" permission

  @api
  Scenario: Administrator
    Given I am logged in as a user with the "administrator" role
    Then I should have the "access administration menu" permission
