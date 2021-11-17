class CreateGforms < ActiveRecord::Migration[5.2]
  def change
    create_table :gforms do |t|
      t.string :name
      t.string :view_link
      t.string :edit_link
      t.string :sheets_link

      t.timestamps
    end
  end
end
