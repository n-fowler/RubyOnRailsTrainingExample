Given(/^I am looking for a puppy to adopt$/) do
  @browser.goto 'http://puppies.herokuapp.com'
end

And(/^I adopt puppy (\d+)$/) do |puppy_number|
  index = (puppy_number.to_i)-1
  on(HomePage).view_details(index)
  on(DetailsPage).adopt_me
end

And(/^I complete the adoption$/) do
  on(ShoppingCartPage).complete_adoption
end

And(/^I adopt another puppy$/) do
  on(ShoppingCartPage).adopt_another
end

Then(/^I should see the message "([^"]*)"$/) do |expected_message|
  expect(@browser.text).to include expected_message
end

And(/^I checkout with:$/) do |checkout_data_table|
  checkout_data = checkout_data_table.hashes.first
  on(CheckoutPage).enter_checkout_data(checkout_data)
  on(CheckoutPage).finishCheckout
end

Then(/^I should see "([^"]*)" as the name for line item (\d+)$/) do |expected_name, line_item|
  expect(on(ShoppingCartPage).name_for_line_item(line_item.to_i)).to include expected_name
end

Then(/^I should see "([^"]*)" as the subtotal for line item (\d+)$/) do |expected_subtotal, line_item|
  expect(on(ShoppingCartPage).subtotal_for_line_item(line_item.to_i)).to eql expected_subtotal
end

Then(/^I should see "([^"]*)" as the total for the cart$/) do |expected_total|
  expect(on(ShoppingCartPage).total_for_cart).to eql expected_total
end