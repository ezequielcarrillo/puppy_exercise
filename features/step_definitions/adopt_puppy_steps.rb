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

#need some refactor
Then (/^I should see "([^"]*)" as the name for line item (\d+)$/) do |name, line_item|
 row = (line_item.to_i - 1) * 6
 @browser.table(:index => 0)[row][1].text.should include name
 end
#need some refactor
 When (/^I should see "([^"]*)" as the subtotal for line item (\d+)$/) do |subtotal,line_item|
 row = (line_item.to_i - 1) * 6
 @browser.table(:index => 0)[row][3].text.should == subtotal
 end
#need some refactor
 When (/^I should see "([^"]*)" as the cart total$/) do |total|
    @browser.td(:class => 'total_cell').text.should == total
  end
