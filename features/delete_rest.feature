Feature: As admin user
  In to remove a closed restaurant
  I need to be able to delete it

  Background:
    Given the following restaurants exist:
      | name       | address1     | postal_code | phone_number | city  |
      | Indian Fun | Snorgatan 12 | 164 55      | 1234555      | Kista |

  Scenario: Add restaurant
    When I visit "landing" page
    And I click on delete to remove the restaurant "Indian Fun"
    Then I should see "Restaurant was successfully destroyed."