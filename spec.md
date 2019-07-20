Specifications for the Rails Assessment
Specs:

 X Using Ruby on Rails for the project
    -Project runs on Ruby on Rails
 X Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    -User, Country has_many Destinations, Destination has_many Attractions
 X Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    -Destination belongs_to User/Country, Attraction belongs_to Destination
 X Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    -User/Country has_many of each other through Destinations
X Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    -Isn't the same as previous req?
 X The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    -Destination has ~five additional fields
 X Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    -Validations in Country, Destination, Attraction models
 X Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    -Scope methods in Destinations, Attractions
 X Include signup (how e.g. Devise)
    -Devise
 X Include login (how e.g. Devise)
    -Devise
 X Include logout (how e.g. Devise)
    -Devise
 X Include third party signup/login (how e.g. Devise/OmniAuth)
    -Devise
 X Include nested resource show or index (URL e.g. users/2/recipes)
    -hidden User/Destination, displayed Destination/Attraction 
 X Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    -hidden User/Destination, displayed Destination/Attraction 
 X Include form display of validation errors (form URL e.g. /recipes/new)
    -in both _form partials

Confirm:

 X The application is pretty DRY
 X Limited logic in controllers
 X Views use helper methods if appropriate
 X Views use partials if appropriate