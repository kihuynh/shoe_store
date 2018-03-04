<!--Your documentation is complete when someone can use your module without ever having to look at its code. This is very important. This makes it possible for you to separate your module's documented interface from its internal implementation (guts). This is good because it means that you are free to change the module's internals as long as the interface remains the same.

Remember: the documentation, not the code, defines what a module does. -- Ken Williams-->

# Shoe Love

#### Ruby application with a many-to-many database relationship, 3/4/2018

#### By Kimberly Huynh

## Description

This application allows the user to interact with a database that connects stores and shoe brands. It allows the user to add stores and brands, update name, and delete. Users are able to add shoes to multiple stores where they can be sold.

## Setup/Installation Requirements
Open Terminal
To clone on your local machine, run the following in the Terminal
 - $ git clone https://github.com/kihuynh/shoe_store
 - $ CD shoe_store
In terminal, navigate to the root directory of the project and run:
*Take note: Postgres must be running on machine for the database to be functional.*
*If Postgres doesn't run automatically on your machine simply run*
*$ postgres*

```
$ bundle install
$ rake db:create
$ ruby app.rb
```

Open your browser and go to localhost:4567

## Technologies Used

* Ruby
* Gems
* Sinatra
* Postgres

## License

*Licensed under MIT license*

Copyright (c) 2018 **_Kimberly Huynh_**
