@ignore
Feature: list gists
  Background:
    * def auth = authentication_failure
    * url base_url

  Scenario: list gists
    Given path '/gists/public'
    And header Accept = 'application/json'
    And header Authorization = 'Bearer' + ' ' + auth
    When method get
    Then status 401
    And match response.message == "#present"


