class Makeidautoincrement < ActiveRecord::Migration[5.1]
  def change
  	execute "Alter table driver modify column id int(11) auto_increment PRIMARY KEY";
  end
end
