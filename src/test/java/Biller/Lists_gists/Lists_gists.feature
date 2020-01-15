#@create_gists
#Feature: Create gists
#  Scenario Outline: This scenario is for create gists through API
#    * call read('../RunnerFeature/gists/Lists/Lists_gists.feature') {"description":<description>, "public": <public>, "file_name":<file_name>,"content":<content>}
#    Examples:
#      |description|public|file_name|content|
#      |"testing gists"|true'|coba.txt|'masih percobaan'|


#Feature: Create gists invalid credential
#  Scenario Outline: This scenario is for create gists through API invalid crdential
#    * call read('../RunnerFeature/gists/lists/invalid_credential.feature') {"gists_id":<gists_id>}
#    Examples:
#      |gists_id|
#      |fe7cff80c54c8bc85b1011115ad9c17d|


Feature: Create gists
  Scenario Outline: This scenario is for create gists through API invalid method
    * call read('../RunnerFeature/gists/lists/invalid_method.feature') {"gists_id":<gists_id>}
    Examples:
      |gists_id|
      |fe7cff80c54c8bc85b1011115ad9c17d|
