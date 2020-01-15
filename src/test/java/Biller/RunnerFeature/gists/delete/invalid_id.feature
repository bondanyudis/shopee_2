@ignore
Feature: delete gists
  Background:
    * def auth = authentication
    * url base_url

  Scenario: delete gists
    Given path '/gists/' + gists_id
    And header Accept = 'application/json'
    And header Authorization = 'Bearer' + ' ' + auth
    When method delete
    Then status 404
    And match response.message == "#present"


