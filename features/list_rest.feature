Feature: As a user
  In order to see what kind of food you can choose from
  I need to see a list of restaurants

Background:
  Given I am on the 'landing' page
  And there are following data

Scenario:
  Then I should see  "Snorgatan 12, 164 55 Kista"
  And I should see '1234555'
  And I should see 'Indian Food'
  And I should see 'Indian Fun'
