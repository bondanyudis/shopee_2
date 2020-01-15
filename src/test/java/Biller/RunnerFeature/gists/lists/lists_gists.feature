@ignore
Feature: list gists
  Background:
    * def auth = authentication
    * url base_url

  Scenario: list gists
    * def mock_number = read('classpath:Biller/Update_gists/payload_request/update/normal_payload_1.json')
    Given path '/gists/public'
    And header Accept = 'application/json'
    And header Authorization = 'Bearer' + ' ' + auth
    And request mock_number
    When method get
    Then status 200
    * print response


