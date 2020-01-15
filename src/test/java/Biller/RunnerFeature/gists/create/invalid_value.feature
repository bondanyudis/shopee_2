@ignore
Feature: delete gists
  Background:
    * def auth = authentication
    * url base_url
#    * def write_file = Java.type('Biller.write_file.write_file')
#    * def result = write_file.writeFile('src/test/java/Biller/Create_gists/request.json', '{}')


  Scenario: delete gists
    Given path '/gists'
    * def mock_number = read('classpath:Biller/Create_gists/payload_request/create/'+file_name+'.json')
    And header Accept = 'application/json'
    And header Authorization = 'Bearer' + ' ' + auth
    And request mock_number
    When method post
    Then status 422
    Then match response.message == "#present"


