Feature: Education karate
  Background:
    * url 'https://petstore.swagger.io/v2/'
  
    Scenario: Get request

     And path 'store/inventory'
     When  method Get
    
    Scenario: Add Queryparameter

      And  path '/pet/findByStatus?status'
      And param status = 'available'
      When method Get
      And print response

    Scenario: Def operation
      * def requestBody =
      """
      {
  "id": 9223372036854776000,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}

      """



      And path '/pet'
      And request 'requestBody'
      When method Get


      
      Scenario: Add Header and status control
        * def requestBody =
      """
      {
  "id": 9223372036854776000,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}

      """



        And path '/pet'
        And request 'requestBody'
        And header user-agent = 'Testinium'
        When method Post
        Then status 415

        Scenario: Response match
          And path '/store/inventory'
          When method Get
          Then status 200
          Then match $.alive == 1






      

