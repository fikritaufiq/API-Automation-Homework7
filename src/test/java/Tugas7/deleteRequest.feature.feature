Feature: Delete test

  Background:
    Given url "https://petstore.swagger.io/"
    And print "terhapus"

  Scenario: get /user/{username}
    Given url "https://petstore.swagger.io/"
    And path "/user/fikritaufiq"
    When method delete
    Then status 404
    And print response

