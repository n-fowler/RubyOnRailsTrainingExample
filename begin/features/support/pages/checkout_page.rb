class CheckoutPage
 include PageObject
  def enter_checkout_data(checkout_data)
  @browser.text_field(:id => 'order_name').set(checkout_data["name"])
  @browser.textarea(:id => 'order_address').set(checkout_data["address"])
  @browser.text_field(:id => 'order_email').set(checkout_data["email"])
  @browser.select(:id => 'order_pay_type').select(checkout_data["payment type"])
  end
  def finishCheckout()
    @browser.button(:value => 'Place Order').click
  end
end