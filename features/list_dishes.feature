Feature: As a user
  In order to decide what dish to choose
  I need to see a list of dishes on the restaurant page with price

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

  Scenario Outline:
    When I visit "restaurant" page
    And I should see "<name>"
    And I should see "<description>"
    And I should see "<price>"
    Examples:
      | name          | description                      | price |
      | Papadom       | Deep fried crunchy things        | 100   |
      | Indian lamb   | Lamb with indian spices          | 200   |
      | Chicken curry | Chicken boiled in curry sauce    | 300   |
      | Vegan curry   | Vegetables boiled in curry sauce | 400   |
      | Choco curry   | Chocolate boiled in curry sauce  | 500   |
