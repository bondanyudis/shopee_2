@ignore
Feature: delete gists
  Background:
    * def auth = authentication_failure
    * url base_url

  Scenario: delete gists
    Given path '/gists/3675a4eaa2de63d5386e708797c55b91'
    And header Accept = 'application/json'
    When method delete
    Then status 404
    And match response.message == "#present"


