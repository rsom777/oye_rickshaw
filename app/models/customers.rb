class Customers < ApplicationRecord

	def self.create_new_customer (driver_name,customer_name,rating)
		Customers.create(:driver_name => driver_name, :customer_name => customer_name, :rating =>rating)
	end

	def self.get_average
		rating = Customers.average(:rating)
		rating
	end

end