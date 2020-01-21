Feature: Application Login

  Scenario: Home page default login
    Given User is on landing page
    When User login into application with "test_user" and "1234"
    Then Home page is populated
    And Cards are displayed

  Scenario: Home page default login
    Given User is on landing page
    When User login into application with "bad_user" and "4321"
    Then Home page is populated
    And Cards are not displayed