Feature: Post test

  Background:
    Given url "https://petstore.swagger.io/v2"
    * def body = {"id": 1,"username":"fikritaufiq","firstName": "Fikri","lastName": "Taufiq","email": "fikritaufiq@gmail.com","password": "12345678","phone": "9999999999999","userStatus": 1}
    * def headerRegress = {"Content-Type": "application/json", "Accept": "application/json"}
    And print "Post a Request"

  Scenario: Post
    When path "/user"
    And headers headerRegress
    And request body
    And method post
    Then status 200
    And print response