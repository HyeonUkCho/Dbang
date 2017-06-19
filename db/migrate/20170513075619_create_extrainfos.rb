class CreateExtrainfos < ActiveRecord::Migration
  def change
    create_table :extrainfos do |t|
      t.integer :house_id
      t.string :managebool
      t.integer :managefee
      t.string :internet
      t.string :television
      t.string :cleanfee
      t.string :waterfee
      t.string :parking
      t.date :enterdate
      t.string :aircon
      t.string :laundary
      t.string :pet

      t.timestamps null: false
    end
  end
end
