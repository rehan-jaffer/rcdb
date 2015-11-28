Feature: Display the front page

  Scenario: Access the front page
    Given that I am not a logged in user
    When I access the front page
    Then I should see the latest posts
    And I should see the latest alerts
    And I should see the latest drugs added
    And I should also see links to the drug categories
