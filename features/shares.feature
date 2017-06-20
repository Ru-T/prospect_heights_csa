Feature: Shares

  Scenario: Share Selection
    When I have signed up as a shareholder
      And I select a full vegetable share
      And I select a half fruit share
      And I click submit
    Then I am presented with a flash message that says "Your shares have been selected!"
