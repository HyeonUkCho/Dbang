class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :user_id
      t.string :title
      t.text   :description
      t.timestamps null: false
    end
  end
end
