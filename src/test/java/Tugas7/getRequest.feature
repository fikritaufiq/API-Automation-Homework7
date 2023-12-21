Feature: Get test

  Background:
    Given url "https://petstore.swagger.io/"
    And print "Get a Request"

  Scenario: get /user/{username}
    Given url "https://petstore.swagger.io/"
    And path "/user/fikritaufiq"
    When method get
    Then status 404
    And print response
