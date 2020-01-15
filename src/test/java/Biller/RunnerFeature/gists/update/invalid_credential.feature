@ignore
Feature: delete gists
  Background:
    * def auth = authentication_failure
    * url base_url
#    * def write_file = Java.type('Biller.write_file.write_file')
#    * def result = write_file.writeFile('src/test/java/Biller/Create_gists/request.json', '{}')


  Scenario: delete gists
    Given url '/gists/fe7cff80c54c8bc85b1011115ad9c17d'
    * def mock_number = read('classpath:Biller/Update_gists/payload_request/update/'+file_name+'.json')
    And header Accept = 'application/json'
    And header Authorization = 'Bearer' + ' ' + auth
    And request mock_number
    When method post
    Then status 401
    Then match response.message == "#present"


