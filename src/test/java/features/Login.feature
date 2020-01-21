Feature: Application Login

  #dynamic feature
  @LoginTest
  Scenario: Home page default login
    Given User is on landing page
    When User login into application with "test_user" and "1234"
    Then Home page is populated
    And Cards displayed "true"

  #dynamic feature
  @LoginTest
  Scenario: Home page default login
    Given User is on landing page
    When User login into application with "bad_user" and "4321"
    Then Home page is populated
    And Cards displayed "false"

  # datatable
  @LoginTest
  Scenario: Home page default login
    Given User is on landing page
    When User sign up with following details
    | test_user | abcd | test_user@gmail.co | usa | 54321|
    Then Home page is populated
    And Cards displayed "false"

  # parameterization
  @LoginTest
  Scenario Outline: Home page default login
    Given User is on landing page
    When User login into application with <username> and <password>
    Then Home page is populated
    And Cards displayed "false"

    Examples:
      |username  |password|
      |user1     |pass1   |
      |user2     |pass2   |
      |user3     |pass3   |
      |user4     |pass4   |