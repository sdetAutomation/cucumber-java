Feature: Application Login

  # prereq that runs before the test
  Background:
    Given Validate the browser
    When Browser is triggered
    Then Check if browser is started

  #dynamic feature
  @AcctTest
  Scenario: Home page default login
    Given User is on landing page
    When User login into application with "test_user" and "1234"
    Then Home page is populated
    And Cards displayed "true"