class ShoppingCartPage
  include PageObject

  NAME_COLUMN_INDEX = 1
  PRICE_COLUMN_INDEX = 3

  table(:shopping_cart, :index => 0)
  cell(:total,:class => 'total_cell')
  button(:complete_puppy_adoption ,:value => 'Complete the Adoption')
  button(:adopt_another_puppy,:value => 'Adopt Another Puppy')

  def name_for_line_item(line_item)
    line_item_first_row_index = (line_item.to_i - 1) * 6
    line_item_first_row = shopping_cart_element[line_item_first_row_index]
    line_item_first_row[NAME_COLUMN_INDEX].text
  end
  def subtotal_for_line_item(line_item)
    line_item_first_row_index = (line_item.to_i - 1) * 6
    item_price_cell = shopping_cart_element[line_item_first_row_index][PRICE_COLUMN_INDEX]
    item_price_cell.text
  end
  def total_for_cart()
    total_cell = total_element
    total_cell.text
  end
  def complete_adoption
    complete_puppy_adoption_element.click
  end

  def adopt_another
    adopt_another_puppy_element.click
  end
end