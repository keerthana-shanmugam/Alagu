# AZHAGU - Ecommerce Beauty Website  

## Heroku Link :
   ###### https://azhagu-ecom.herokuapp.com/ 

## Sonarcloud Link :
   ###### https://sonarcloud.io/project/overview?id=keerthana-shanmugam_Alagu

## Github Link :
   ###### https://github.com/keerthana-shanmugam/Alagu    

## Project Presentation Link :
   ###### https://docs.google.com/presentation/d/1uztywfFccmifB6DfgQy7fF7EN1hdL6spR-5GDaARgKs/edit?usp=sharing


## About Azhagu :
   * Azhagu is a Ecommerce website where Users can buy, add to cart, search and add products to their wishlist like Moisturizer, Hair cream, Lipstick, eyeliner, sunscreen etc.   

   * Users of azhagu website are admin and user, where admin can add and delete the listed products and for user he can add and remove his wishlist and cart storages. 

## Gem Used :
   ##### gem 'bcrypt'
   ##### gem 'image_processing'
   ##### gem 'rubocop'

## Features:
 #### Signup:
   * Name, Email, Phone number, Password are the form fields getting from users and storing in database to create an user account.
 #### Signin:
   * Email and Password of existing users which we stored in database should be same to enter into the users account.
 #### Add Products (Admin):
   * Admin only has the authority to Add products. 
 #### Delete Products (Admin):
   * Admin only has the authority to Delete products.
 #### Listing Products: 
   * Both admin and user can view all products which have been added by admin.
 #### Filter by Categories:
   * There are four categories Makeup, Face, Skin, Hair as left navbar in which we select one it will filter out the categories of the same.
 #### Search Products by Name:
   * Users can type any name in search box and it will list the products which are saved in database.
 #### Add To Wishlist:
   * Users can add to there wishlist products to there account.
 #### Delete Wishlist:
   * Users can delete there wishlisted products in there account.
 #### Add To Cart:
   * Users can add to cart.  
 #### Delete Cart:
   * Users can delete the products in the cart.

## Validations :

 #### Signup (users)

   * Name field should not be empty and minimum 3 characters should be there. 
   * Email field should not be empty and must be unique and the correct email pattern.
   * Phone number should not be empty and 10 numbers should fill in this field.
   * Password should not be empty and minimum 7 characters should be there.

 #### Login (users)
   * Registered email_id and password only valid. 

 #### Add products (admin)
   * Name field should not be empty and minimum 3 characters should be there. 
   * Image field should not be empty.
   * Price field should not be empty and must be minimum 1 and maximum 5 characters should be there.
   * Categories field should not be empty and minimum 4 and maximum 7 characters should be there.




<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Git add
git commit -m "testing dev branch"
git push -u origin dev (for first time)
git push origin dev (for every time)
 -->
