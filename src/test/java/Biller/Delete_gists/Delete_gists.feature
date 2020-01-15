Feature: Create gists
  Scenario Outline: This scenario is for create gists through API
    * call read('../RunnerFeature/gists/delete/Delete_gists.feature') {"gists_id":<gists_id>}
    Examples:
      |gists_id|
      |3675a4eaa2de63d5386e708797c55b91|

Feature: Create gists invalid credential
  Scenario Outline: This scenario is for create gists through API invalid crdential
    * call read('../RunnerFeature/gists/delete/invalid_credential.feature') {"gists_id":<gists_id>}
    Examples:
      |gists_id|
      |fe7cff80c54c8bc85b1011115ad9c17d|


Feature: Create gists no auth
  Scenario Outline: This scenario is for create gists through API no auth
    * call read('../RunnerFeature/gists/delete/no_auth.feature') {"gists_id":<gists_id>}
    Examples:
      |gists_id|
      |fe7cff80c54c8bc85b1011115ad9c17d|

Feature: Create gists
  Scenario Outline: This scenario is for create gists through API invalid method
    * call read('../RunnerFeature/gists/delete/invalid_method.feature') {"gists_id":<gists_id>}
    Examples:
      |gists_id|
      |fe7cff80c54c8bc85b1011115ad9c17d|

Feature: Create gists invalid id
  Scenario Outline: This scenario is for create gists through API invalid id
    * call read('../RunnerFeature/gists/delete/invalid_id.feature') {"gists_id":<gists_id>}
    Examples:
      |gists_id|
      |'aaaaaaa'|