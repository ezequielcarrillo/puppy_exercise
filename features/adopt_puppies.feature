Feature: Adopting puppies

     As a puppy lover
     I want to adopt puppies
     So they can have a new home

  Background:
    Given I am on the puppy adoption site

  Scenario: Adopting one puppy

   When I click the View Details button
     And I click the Adopt Me button
     And I click the Complete the Adoption button
     And I complete the adoption form
     Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting two puppies

   When I click the View Details button for "Brook"
     And I click the Adopt Me button
     And I click the Adopt Another Puppy button
     And I click the View Details button for "Hanna"
     And I click the Adopt Me button
     And I click the Complete the Adoption button
     And I complete the adoption form
   Then I should see "Thank you for adopting a puppy!"

  Scenario: Validate cart with one puppy
   When I click the View Details button
     And I click the Adopt Me button
   Then I should see "Brook" as the name for line item 1
     And I should see "$34.95" as the subtotal for line item 1
     And I should see "$34.95" as the cart total