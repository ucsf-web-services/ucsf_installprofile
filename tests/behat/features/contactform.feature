Feature: Contact Form
  In order to contact the site's owners
  As a site visitor
  I want to utilize a contact form

@api
Scenario: Access the contact form page
  Given I am an anonymous user
  When I visit "/content/contact"
  Then I should see the heading "Contact" in the "Page Container" region

@api
Scenario: Submit the contact form
  Given I am an anonymous user
  When I visit "/content/contact"
  And I fill in the following:
    | Firstname     | John                        |
    | Lastname      | Doe                         |
    | Email Address | some.email.address@ucsf.edu |
    | Subject       | lorem ipsum                 |
    | Message       | this is a test              |
  And I press the "Submit" button
  Then I should see the text "Thank you, your submission has been received."
  And I should see the link "Go back to the form"

@api
Scenario: Form validation
  Given I am an anonymous user
  When I visit "/content/contact"
  And I fill in "Email Address" with "not-an-email-address@foobar"
  And I press the "Submit" button
  Then I should see the error message containing "is not a valid email address."
