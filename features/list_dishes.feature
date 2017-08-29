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
      | title         | description                      | price | restaurant | dish_category  | picture  |
      | papadom       | deep fried crunchy things        | 100   | Indian Fun | Starter        | pic1.png |
      | indian lamb   | lamb with indian spices          | 200   | Indian Fun | Main           | pic2.png |
      | chicken curry | chicken boiled in curry sauce    | 300   | Indian Fun | Main           | pic3.png |
      | vegan curry   | vegetables boiled in curry sauce | 400   | Indian Fun | Main           | pic4.png |
      | choco curry   | Chocolate boiled in curry sauce  | 500   | Indian Fun | Dessert        | pic5.png |


  Scenario Outline:
    When I visit "restaurant" page
    And I should see "<title>"
    And I should see "<description>"
    And I should see "<price>"
    And I should see "<dish_category>"
    And the dish should have "<picture>" as image

    Examples:
      | title         | description                      | price | dish_category | picture  |
      | papadom       | deep fried crunchy things        | 100   | Starter       | pic1.png |
      | indian lamb   | lamb with indian spices          | 200   | Main          | pic2.png |
      | chicken curry | chicken boiled in curry sauce    | 300   | Main          | pic3.png |
      | vegan curry   | vegetables boiled in curry sauce | 400   | Main          | pic4.png |
      | choco curry   | Chocolate boiled in curry sauce  | 500   | Dessert       | pic5.png |
