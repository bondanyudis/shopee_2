@ignore
Feature: list gists
  Background:
    * def auth = authentication
    * url base_url

  Scenario: list gists
    Given path '/gists/public'
    And header Accept = 'application/json'
    And header Authorization = 'Bearer' + ' ' + auth
    When method put
    Then status 404
    And match response.message == "#present"


