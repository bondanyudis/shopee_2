#@create_gists
#Feature: Create gists
#  Scenario Outline: This scenario is for create gists through API
#    * call read('../RunnerFeature/gists/update/Update_gists.feature') {"description":<description>, "public": <public>, "file_name":<file_name>,"content":<content>}
#    Examples:
#      |description|public|file_name|content|
#      |"testing gists"|true'|coba.txt|'masih percobaan'|


  Feature: Create gists invalid method
  Scenario Outline: This is negative scenario is for create gists through API with invalid method
    * call read('../RunnerFeature/gists/update/invalid_method.feature') {"file_name":<file_name>}
    Examples:
      |file_name|
      |'invalid_field_files'|


#    Feature: Create gists invalid description
#    Scenario Outline: This is negative scenario is for create gists through API with invalid description
#      * call read('../RunnerFeature/gists/update/invalid_value.feature') {"file_name":<file_name>,"description":<description>}
#      Examples:
#        |file_name|description|
#        |'normal_payload_3'|false|
#        |'normal_payload_3'|null|
#
#
#
#      Feature: Create gists invalid content values
#      Scenario Outline: This is negative scenario is for create gists through API with invalid content value
#        * call read('../RunnerFeature/gists/update/invalid_value.feature') {"file_name":<file_name>,"description":<description>, "public":<public>,"content":<content>}
#        Examples:
#          |file_name|description|public|content|
#          |'normal_payload_3'|"lorem ipsum"|true|false|
#          |'normal_payload_3'|"lorem ipsum"|false|true|
#          |'normal_payload_3'|"lorem ipsum"|false|1111|
#
#Feature: Create gists invalid auth
#  Scenario Outline: This is normal scenario is for create gists through API
#    * call read('../RunnerFeature/gists/update/invalid_credential.feature') {"file_name":<file_name>}
#    Examples:
#      |file_name|
#      |'normal_payload_1'|