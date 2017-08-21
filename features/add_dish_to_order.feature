
Feature: As user
  In order to choose multiple dishes
  I need to be able to add them to my order

Background:
  Given the following restaurants exist:
    | name       | address1     | postal_code | phone_number | city  | cuisine     |
    | Indian Fun | Snorgatan 12 | 164 55      | 1234555      | Kista | Indian Food |

  And the following dishes exist
    | title         | description                      | price | restaurant |
    | papadom       | deep fried crunchy things        | 100   | Indian Fun |
    | indian lamb   | lamb with indian spices          | 200   | Indian Fun |
    | chicken curry | chicken boiled in curry sauce    | 300   | Indian Fun |
    | vegan curry   | vegetables boiled in curry sauce | 400   | Indian Fun |
    | choco curry   | Chocolate boiled in curry sauce  | 500   | Indian Fun |

Scenario: Add dish to order
  When I visit "restaurant" page
  And I should be able to see "papadom" on the page
  And I add "papadom" to order
  Then Order items in cart should be "1"
  And I should see "papadom was successfully added to order"
