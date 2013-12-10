When(/^I click the View Details button$/) do
  on(HomePage).select_puppy
end

When(/^I click the View Details button for "(.*?)"$/) do |name|
  on(HomePage).select_puppy name
end

And (/^I click the Adopt Another Puppy button$/) do

     on(ShoppingCartPage).continue_shopping
end

And (/^I click the Complete the Adoption button$/) do

  on(ShoppingCartPage).proceed_to_checkout
end

When(/^I click the Adopt Me button$/) do
  on(DetailsPage).add_to_cart
end

And(/^I complete the adoption form$/) do
 on(CheckoutPage).checkout
end

