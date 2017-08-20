Feature: As a user
  In order to see what kind of food you can choose from
  I need to see a list of restaurants

  Background:
    Given the following restaurants exist:
      | name           | address1          | postal_code | phone_number | city    |
      | Indian Fun     | Snorgatan 12      | 164 55      | 1234555      | Kista   |
      | Italian Fun    | Leyongatan 14     | 164 55      | 8462956      | Kista   |
      | Chinese Fun    | Potatisgatan 20   | 164 55      | 0484658      | Kista   |
      | American Fun   | Snigelgatan 69    | 164 55      | 0735465      | Kista   |

  Scenario Outline:
    When I visit "landing" page
    And I should see "<name>"
    And I should see "<address1>, <postal_code> <city>"
    And I should see "<phone_number>"
    Examples:
      | name           | address1          | postal_code | phone_number | city    |
      | Indian Fun     | Snorgatan 12      | 164 55      | 1234555      | Kista   |
      | Italian Fun    | Leyongatan 14     | 164 55      | 8462956      | Kista   |
      | Chinese Fun    | Potatisgatan 20   | 164 55      | 0484658      | Kista   |
      | American Fun   | Snigelgatan 69    | 164 55      | 0735465      | Kista   |
