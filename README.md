# Family Lego Collection Inventory (Ruby/Sinatra API)
 
 Repository for React Frontend: https://github.com/BreMarotta/lego-inventory-app

## Phase 3 Ruby

Phase 3 of the curriculum focuses on Ruby. This is my first time working in the backend of web development. The focus of my project is building a Sinatra API backend that uses Active Record. This is to access and persist data in a database that can then be used by a React app frontend. 


For this project, I needed to include:

* Active Record to interact with my database

* A minimum of two models with at least a one-to-many relationship

* Create API routes in Sinatra to perform at least three distinct CRUD actions for at least one Active Record model


## Meeting the Requirements

My API meets and exceeds the requirements for this project. I created three models with multiiple one-to-many relationship. I created the following models:

* LegoSet 

belongs_to :owner
belongs_to :genre

* Owner 

has_many :lego_sets  
has_many :genres, through: :lego_sets

* Genre 

has_many :lego_sets
has_many :owners, through: :lego_sets

By creating these models with the above described relationships and employing Active Record, I was able to create a dynamic database with multiple built in methods. (For reference on these relationships, please check out: https://edgeguides.rubyonrails.org/association_basics.html)

Additionally, to meet the CRUD requirements, I developed multiple API routes in Sinatra. /genres and /owners endpoints both have GET requests to obtain information for the front end. /lego_sets has GET, POST, and PATCH requests.


## Getting Started
First, you will need to fork and clone this repository into a local directory. Once you navigate into the correct file, run:

### `bundle install` 
to insall the gems required.

Next, start the server 
### ` bundle exec rake server`
this will run the server on port http://localhost:9292

If you have this server running in conjunction with the React app, you should be able to use all of the functions and methods for both simultaneously.


## Additional Information:

* Please check out the YouTube walk through video to see all the SPA features: https://youtu.be/py0fa3kAmFk

* Also check out my blog about his project: 


