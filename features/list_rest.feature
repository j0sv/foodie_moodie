Feature: As a user
  In order to see what kind of food you can choose from
  I need to see a list of restaurants

Background:
  Given the following restaurants exists:
    | name         | address1       | postal_code | phone_number | city    | cuisine       |
    | Indian Fun   | Snorgatan 12   | 164 55      | 1234555      | Kista   | Indian Food   |

Scenario:
  When I visit "landing" page
  And I should see "Indian Fun"
  And I should see "Snorgatan 12, 164 55 Kista"
  And I should see "1234555"
  And I should see "Indian Food"
