class V1::DriversController < V1::ApplicationController
	protect_from_forgery

	def driver_rating
		driver_name = params[:driver_name]
		customer_name = params[:customer_name]
		rating = params[:rating]

		if driver_name.present? && customer_name.present?
			if rating >= 0 && rating <= 5

				Drivers.create_new_driver(driver_name,customer_name,rating)

				render json: {driver_name: driver_name, customer_name: customer_name, rating: rating }
			else
				render json: {message: "Rating should be between 0 to 5."},status: 401
			end
		else
			render json: {message: "Enter driver name/customer name"},status: 401
		end
	end

	def ratings_driver
		rating = Drivers.get_average
		render json: {average_rating: rating}
	end
end
