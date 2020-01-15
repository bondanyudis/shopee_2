@ignore
Feature: update gists
  Background:
    * def auth = authentication
    * url base_url

  Scenario: update gists
    Given url '/gists/fe7cff80c54c8bc85b1011115ad9c17d'
    * def mock_number = read('classpath:Biller/Update_gists/payload_request/update/normal_payload_1.json')
    And header Accept = 'application/json'
    And header Authorization = 'Bearer' + ' ' + auth
    And request mock_number
    When method patch
    Then status 200
    * print response


