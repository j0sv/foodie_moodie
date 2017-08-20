Feature: As admin user
  In order to choose multiple dishes
  I need to be able to add a restaurant

  Background:
    Given the following restaurants exist:
      | name       | address1     | postal_code | phone_number | city  |
      | Indian Fun | Snorgatan 12 | 164 55      | 1234555      | Kista |

  Scenario: Add restaurant
    When I visit "register restaurant" page
    And I fill in "restaurant_name" with "Nice Food place"
    And I fill in "restaurant_address1" with "Nice Food place"
    And I fill in "restaurant_address2" with "Nice Food place"
    And I fill in "restaurant_postal_code" with "Nice Food place"
    And I fill in "restaurant_city" with "Nice Food place"
    And I fill in "restaurant_country" with "Nice Food place"
    And I fill in "restaurant_phone_number" with "Nice Food place"
    And I fill in "restaurant_email" with "Nice Food place"
    And I fill in "restaurant_long" with "Nice Food place"
    And I fill in "restaurant_lat" with "Nice Food place"
    And I click "Create Restaurant"
    Then I should see "Restaurant was successfully created."