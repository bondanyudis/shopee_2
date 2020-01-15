@create_gists
Feature: Create gists
  Scenario Outline: This is normal scenario is for create gists through API
    * call read('../RunnerFeature/gists/create/Create_gists.feature') {"file_name":<file_name>}
    Examples:
      |file_name|
      |'normal_payload_1'|
      |'normal_payload_2'|

@create_gists_invalid_field_files
Feature: Create gists invalid field files
Scenario Outline: This is negative scenario is for create gists through API with invalid field files
  * call read('../RunnerFeature/gists/create/invalid_field_files.feature') {"file_name":<file_name>}
  Examples:
    |file_name|
    |'invalid_field_files'|

  @create_gists_invalid_method
  Feature: Create gists invalid method
  Scenario Outline: This is negative scenario is for create gists through API with invalid method
    * call read('../RunnerFeature/gists/create/invalid_method.feature') {"file_name":<file_name>}
    Examples:
      |file_name|
      |'normal_payload_1'|

  @create_gists_invalid_description
  Feature: Create gists invalid description
  Scenario Outline: This is negative scenario is for create gists through API with invalid description
    * call read('../RunnerFeature/gists/create/invalid_value.feature') {"file_name":<file_name>,"description":<description>}
    Examples:
      |file_name|description|
      |'normal_payload_3'|false|
      |'normal_payload_3'|null|

  @create_gists_invalid_public_values
  Feature: Create gists invalid pulic values
  Scenario Outline: This is negative scenario is for create gists through API with invalid public values
    * call read('../RunnerFeature/gists/create/invalid_value.feature') {"file_name":<file_name>,"description":<description>, "public":<public>}
    Examples:
      |file_name|description|public|
      |'normal_payload_3'|"lorem ipsum"|"aaa"|
      |'normal_payload_3'|"lorem ipsum"|"bbb"|
      |'normal_payload_3'|"lorem ipsum"|123  |

  @create_gists_invalid_content_values
  Feature: Create gists invalid content values
  Scenario Outline: This is negative scenario is for create gists through API with invalid content value
    * call read('../RunnerFeature/gists/create/invalid_value.feature') {"file_name":<file_name>,"description":<description>, "public":<public>,"content":<content>}
    Examples:
      |file_name|description|public|content|
      |'normal_payload_3'|"lorem ipsum"|true|false|
      |'normal_payload_3'|"lorem ipsum"|false|true|
      |'normal_payload_3'|"lorem ipsum"|false|1111|

  @create_gists_invalid_field_content
  Feature: Create gists invalid field content
  Scenario Outline: This is negative scenario is for create gists through API with invalid field content
    * call read('../RunnerFeature/gists/create/invalid_field_files.feature') {"file_name":<file_name>}
    Examples:
      |file_name|
      |'invalid_field_contents'|

Feature: Create gists invalid auth
  Scenario Outline: This is normal scenario is for create gists through API
    * call read('../RunnerFeature/gists/create/invalid_credential.feature') {"file_name":<file_name>}
    Examples:
      |file_name|
      |'normal_payload_1'|


Feature: Create gists no auth
  Scenario Outline: This is normal scenario is for create gists through API
    * call read('../RunnerFeature/gists/create/no_auth.feature') {"file_name":<file_name>}
    Examples:
      |file_name|
      |'normal_payload_1'|

Feature: Create gists invalid without files field
Scenario Outline: This is negative scenario is for create gists through API without field files
  * call read('../RunnerFeature/gists/create/invalid_field_files.feature') {"file_name":<file_name>}
  Examples:
    |file_name|
    |'without_field_files'|