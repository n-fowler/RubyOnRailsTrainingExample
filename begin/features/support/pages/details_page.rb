class DetailsPage
  include PageObject
  def adopt_me
    @browser.button(:value => 'Adopt Me!').click
  end
end