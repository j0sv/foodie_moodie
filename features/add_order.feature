Feature: As user
  In order to choose multiple dishes
  I need to be able to add them to order

  Background:
    Given the following restaurants exist:
      | name       | address1     | postal_code | phone_number | city  |
      | Indian Fun | Snorgatan 12 | 164 55      | 1234555      | Kista |

    And the following dishes exist:
      | name          | description                      | price | restaurant |
      | Papadom       | Deep fried crunchy things        | 100   | Indian Fun |
      | Indian lamb   | Lamb with indian spices          | 200   | Indian Fun |
      | Chicken curry | Chicken boiled in curry sauce    | 300   | Indian Fun |
      | Vegan curry   | Vegetables boiled in curry sauce | 400   | Indian Fun |
      | Choco curry   | Chocolate boiled in curry sauce  | 500   | Indian Fun |

  Scenario: Add dish to order
    When I visit menu page for "Indian Fun"
    And I should see "Papadom"
    And I add "Papadom" to order
    Then I should see "Papadom was successfully added to order"
    And Order items in cart should be "1"
