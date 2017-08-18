Feature: As user
  In order to choose multiple dishes
  I need to be able to add them to order

Background:
  Given the following dishes exist
    | title         | description                      | price | restaurant |
    | papadom       | deep fried crunchy things        | 100   | Indian Fun |
    | indian lamb   | lamb with indian spices          | 200   | Indian Fun |
    | chicken curry | chicken boiled in curry sauce    | 300   | Indian Fun |
    | vegan curry   | vegetables boiled in curry sauce | 400   | Indian Fun |
    | choco curry   | Chocolate boiled in curry sauce  | 500   | Indian Fun |

Scenario: Add dish to order
  When I visit the "Restaurant" page
  And I add "papadom" to order
  Then Order items in cart should be "1"
  And I should see "papadom was successfully added to order"
