# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Install ruby 2.3.4 from rbenv or rvm
* Install rails 5.1.6 or higher
* Comment the two migrations which contain auto_increment of tables and run bundle exec rake db:create 
* Now uncomment the two migrations and run bundle exec rake db:migrate
* bundle install
* Run "rails server" to start server
* run "localhost:3000/v1/driver_rating" in post method and in body pass
	*   {
    		"driver_name":"abc",
    		"customer_name":"def",
    		"rating":4
		}
		This will create a entry in db with rating for driver.Similarly do the same thing for customer with "localhost:3000/v1/customer_rating" to make entry for customer.

	* Make sure rating should be between 0 to 5

* run "localhost:3000/v1/driver_ratings" in get method to get the average rating of driver and similarly  	run "localhost:3000/v1/customer_ratings" get the average rating of customer.
