Feature: As admin
  In order for customer to select a restaurant
  I need to be able to add a restaurant to the site

  Background:
    Given the following restaurants exist:
      | name       | address1     | postal_code | phone_number | city  |
      | Indian Fun | Snorgatan 12 | 164 55      | 1234555      | Kista |

  Scenario: Add restaurant
    When I visit "register restaurant" page
    And I fill in "restaurant_name" with "Nice Food place"
    And I fill in "restaurant_address1" with "Storgatan 14"
    And I fill in "restaurant_postal_code" with "123 45"
    And I fill in "restaurant_city" with "Mora"
    And I fill in "restaurant_country" with "Sweden"
    And I fill in "restaurant_phone_number" with "043-123 45 67"
    And I fill in "restaurant_email" with "info@niceplace.io"
    And I fill in "restaurant_long" with "1.123456"
    And I fill in "restaurant_lat" with "2.345678"
    And I click "Create Restaurant"
    Then I should see "Restaurant was successfully created."