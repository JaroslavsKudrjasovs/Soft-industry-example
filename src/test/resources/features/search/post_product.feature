Feature: Search for the product

### Please use endpoint GET https://waarkoop-server.herokuapp.com/api/v1/search/test/{product} for getting the products.
### Available products: "apple", "mango", "tofu", "water"
### Prepare Positive and negative scenarios

  Scenario: Check the existence of products in the supply
    When he calls endpoint "https://waarkoop-server.herokuapp.com/api/v1/search/test/apple"
    Then he sees the results displayed for apple
    When he calls endpoint "https://waarkoop-server.herokuapp.com/api/v1/search/test/mango"
    Then he sees the results displayed for mango
    When he calls endpoint "https://waarkoop-server.herokuapp.com/api/v1/search/test/car"
    Then he does not see the results

  Scenario: Check size of supply chain of certain product
    When he calls endpoint "https://waarkoop-server.herokuapp.com/api/v1/search/test/apple"
    Then he sees the total number of results for apple

  Scenario: Check size of supply chain of product plus provider
    When he calls endpoint "https://waarkoop-server.herokuapp.com/api/v1/search/test/apple"
    Then he sees the total number of results for ah apple
