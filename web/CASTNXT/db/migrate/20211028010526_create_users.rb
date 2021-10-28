class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :agency_name
      t.string :address 
      t.string :phone_number
      t.string :email_address
      t.integer :height_feet
      t.integer :height_inches
      t.integer :dress_size
      
    end
  end
end
