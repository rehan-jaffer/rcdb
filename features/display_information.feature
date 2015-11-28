Feature: Display Drug Information
  Drugs should only be displayed if they exist
  Drugs should only be displayed if they are enabled
  If a user is an admin then an edit link should be displayed

  Scenario: Display a Cannabinoid
    Given that a cannabinoid exists
    And I access its associated page
    Then I should see the cannabinoid
