# Ruby On Rails Training Example

In this exercise, you are to introduce a "Page Object", i.e. a Ruby class which represents the Shopping Cart Page. The goal is to abstract the step definitions away from how functionality is implemented in the browser. 

1. Create a ShoppingCartPage class file in the features/support/pages directory.
2. Use the ShoppingCartPage class' constructor (i.e. initialize method) to supply an instance of Browser to the page object.
3. Define methods in the ShoppingCartPage to determine the puppy name for a given line item number, the puppy subtotal for a given puppy line number, and the cart total. These methods will access the various elements in the Browser to return the needed information.
4. Use an instance variable (i.e. @shopping_cart_page) in the step definitions to supply the information previously obtained directly from the browser.
5. Determine a suitable point in the workflow at which the @shopping_cart_page instance variable can be instantiated. Although not optimal for reasons to be discussed later, a reasonable choice for now could be just after the "Adopt Me" button is clicked (since this should cause navigation to the Shopping Cart page).  
