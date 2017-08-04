# Graze Database

## Instructions

* This code presupposes the existence of MySQL databases called graze_development and graze_test.  If necessary they can be renamed in ***config/database.yml***.
* To get started navigate into this repository and run ``bundle install``
* Type ``rspec`` to run my tests.
* Type ``rails s`` to run the code locally at ***http://localhost:3000***.

## Design

The code is designed around four classes:
* An account has an id property, and has many boxes and ratings.
* A box has id and delivery-date properties, belongs to an account, and has a many-to-many relationship with products.
* A product has id, name and category properties, has many ratings, and has a many-to-many relationship with boxes.
* A rating belongs to both an account and a product, and has a rating property. For example a rating might belong to the account '10700', and property '104', and have a rating property of 3, meaning that the customer with account id 10700 has given product 104 a score of 3.

I have assumed that the user already has access to a list of Account IDs. If they enter a non-existent ID an error message is displayed.

I've also assumed that the default rating is 1 if none is entered for a product.

## Desirable Improvements
* Enabling the user to edit ratings
* Increasing efficiency - currently loading data is very slow!
