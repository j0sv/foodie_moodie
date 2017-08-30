Feature: As a user
  In order to decide what dish to choose
  I need to see a list of dishes on the restaurant page with price

  Background:

    Given the following restaurants exist:
      | name       | address1     | postal_code | phone_number | city  | cuisine     |
      | Indian Fun | Snorgatan 12 | 164 55      | 1234555      | Kista | Indian Food |

    And the following categories exist:
      | name    | description                     |
      | Starter | Start your dinner with fun      |
      | Main    | Brace yourself winter is coming |
      | Dessert | Winter is here                  |

    And the following dishes exist:
      | title         | description                      | price | restaurant | dish_category  | image     |
      | papadom       | deep fried crunchy things        | 100   | Indian Fun | Starter        | bild.jpeg |
      | indian lamb   | lamb with indian spices          | 200   | Indian Fun | Main           | bild.jpeg |
      | chicken curry | chicken boiled in curry sauce    | 300   | Indian Fun | Main           | bild.jpeg |
      | vegan curry   | vegetables boiled in curry sauce | 400   | Indian Fun | Main           | bild.jpeg |
      | choco curry   | Chocolate boiled in curry sauce  | 500   | Indian Fun | Dessert        | bild.jpeg |


  Scenario Outline:
    When I visit "restaurant" page
    And I should see "<title>"
    And I should see "<description>"
    And I should see "<price>"
    And I should see "<dish_category>"
    And the dish should have "<image>" as image

    Examples:
      | title         | description                      | price | dish_category | image     |
      | papadom       | deep fried crunchy things        | 100   | Starter       | bild.jpeg |
      | indian lamb   | lamb with indian spices          | 200   | Main          | bild.jpeg |
      | chicken curry | chicken boiled in curry sauce    | 300   | Main          | bild.jpeg |
      | vegan curry   | vegetables boiled in curry sauce | 400   | Main          | bild.jpeg |
      | choco curry   | Chocolate boiled in curry sauce  | 500   | Dessert       | bild.jpeg |
