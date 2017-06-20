Feature: User

  Scenario: User Account Creation
    Given I am not logged into the site
    When I visit the "/shareholders/new" page
      And I enter my first name
      And I enter my last name
      And I enter my desired email address
      And I enter my desired phone
      And I click submit
    Then I am presented with a flash message that says "Account Successfully Created!"
