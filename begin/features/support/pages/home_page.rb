class HomePage
  include PageObject
  def view_details(index)
    @browser.button(:value => 'View Details', :index => index).click
  end
end