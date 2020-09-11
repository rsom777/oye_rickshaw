class Drivers < ApplicationRecord

	def self.create_new_driver (driver_name,customer_name,rating)
		Drivers.create(:driver_name => driver_name, :customer_name => customer_name, :rating =>rating)
	end

	def self.get_average
		rating = Drivers.average(:rating)
		rating
	end

end