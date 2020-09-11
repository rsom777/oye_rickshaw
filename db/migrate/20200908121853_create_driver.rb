class CreateDriver < ActiveRecord::Migration[5.1]
  def change
    create_table :driver,:id => false do |t|
    	t.integer 	:id 
    	t.string 	:driver_name 
    	t.string 	:customer_name
    	t.float 	:rating
    end
  end
end
