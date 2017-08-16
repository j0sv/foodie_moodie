Feature: As a user
  In order to see what kind of food you can choose from
  I need to see a list of restaurants

Background:
  Given I am on the 'landing' page
  And there are following restaurants exists:
    | Name         | Address1       | PostalCode | City    | Cuisine       |
    | 'Indian Fun' | 'Snorgatan 12' | '164 55'   | 'Kista' | 'Indian Food' |

Scenario:
  Then I should see 'Indian Fun'
  And I should see  "Snorgatan 12, 164 55 Kista"
  And I should see '1234555'
  And I should see 'Indian Food'
