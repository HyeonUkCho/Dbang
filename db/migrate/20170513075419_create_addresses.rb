class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :house_id
      t.string :postcode
      t.string :mainaddress
      t.string :detailaddress

      t.timestamps null: false
    end
  end
end
