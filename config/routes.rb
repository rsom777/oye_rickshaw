Rails.application.routes.draw do

  namespace :v1 do
  	 post "/driver_rating"  		=> "drivers#driver_rating"
  	 post "/customer_rating"  		=> "customers#customer_rating"
  	 get "/driver_ratings"       	=> "drivers#ratings_driver"
  	 get "/customer_ratings"       	=> "customers#ratings_customer"
  end

end
