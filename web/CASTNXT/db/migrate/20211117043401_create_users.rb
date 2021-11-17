class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :token
      t.string :email
      t.string :name
      t.string :userType

      t.timestamps
    end
  end
end
