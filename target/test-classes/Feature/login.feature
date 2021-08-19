
Feature: Login Feature
  In Order to Maintain the health records
  As a OpenEMr users
  I want to login to the portal

@invalid    //tags
  Scenario: Invalid Credential
    Given I have browser with OpenEmr Page
    When I enter usename as "admin123"
    And I enter password as "pass"
    And I enter language as "English (Indian)"
    And I click on login
    Then I should get the error message as "Invalid username or password"

  @valid @high
  Scenario Outline: Valid Credential
    When I enter username as "<username>"
    And I enter password as "<password>"
    And I select language as "<language>"
    And I click on login
    Then I should access to the portal with title as "OpenEMR"

    Examples: 
      | username   | password   | language         |
      | admin      | pass       | English (Indian) |
      | accountant | accountant | English (Indian) |
      | physician  | physician  | English (Indian) |
  
