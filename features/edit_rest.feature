Feature: As admin user
  If a restaurant changes name
  I need to be able to edit a restaurant

  Background:
    Given the following restaurants exist:
      | name       | address1     | postal_code | phone_number | city  |
      | Indian Fun | Snorgatan 12 | 164 55      | 1234555      | Kista |

  Scenario: Edit restaurant
    When I visit "Edit" page for "Indian Fun"
    And I fill in "restaurant_name" with "Nice Food place"
    And I click "Update Restaurant"
    Then I should see "Restaurant was successfully updated."