# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
    - Yes
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    - Show has many comments
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    - Comments belong to User
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    - User has many shows through viewings
    - Actor has many shows through actors_shows table
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    - User has many shows through viewings
    - Show has many users through viewings
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    - viewing.time
    - viewing.place
- [X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    -All models have some validations
- [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    - character.search_by_name URL: /searches/results?search=#{YOUR SEARCH HERE}&commit=search
- [X] Include signup (how e.g. Devise)
    - bcrypt
- [X] Include login (how e.g. Devise)
    - Creates session with unique user_id
- [x] Include logout (how e.g. Devise)
    - Destroys session
- [X] Include third party signup/login (how e.g. Devise/OmniAuth)
    - Omniauth with Google
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    - URL shows/3/characters/1
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    - shows/1/characters/new
- [X] Include form display of validation errors (form URL e.g. /recipes/new)
    - Yes, for every form!

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
