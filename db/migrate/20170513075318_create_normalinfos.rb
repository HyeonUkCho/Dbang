class CreateNormalinfos < ActiveRecord::Migration
  def change
    create_table :normalinfos do |t|
      t.integer :house_id
      t.string :housetype
      t.string :dealtype
      t.integer :monthlyfee
      t.integer :tradefee
      t.integer :totalfloor
      t.integer :myfloor

      t.timestamps null: false
    end
  end
end
