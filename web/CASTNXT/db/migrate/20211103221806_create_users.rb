class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :token
      t.string :name
      t.string :email
      t.string :accType

      t.timestamps
    end
  end
end
