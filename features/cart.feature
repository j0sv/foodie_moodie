Feature: As a user
  In order to buy dishes
  I need to add desired dishes to the cart

Background:
  Given the following dishes exist
    | title         | description                      | price | restaurant |
    | papadom       | deep fried crunchy things        | 100   | Indian Fun |
    | indian lamb   | lamb with indian spices          | 200   | Indian Fun |
    | chicken curry | chicken boiled in curry sauce    | 300   | Indian Fun |
    | vegan curry   | vegetables boiled in curry sauce | 400   | Indian Fun |
    | choco curry   | Chocolate boiled in curry sauce  | 500   | Indian Fun |

  And The following dishes exist in the cart
    | title         |
    | papadom       |
    | indian lamb   |

Scenario: View the cart
  When I visit "Cart Detail" page
  Then I should see "papadom"
  And I should see the count "1" for "papadom"
  And I should see "indian lamb"
  And I should see the count "2" for "indian lamb"
  And I should see "Total price: 300"
  And I click "Buy" 
