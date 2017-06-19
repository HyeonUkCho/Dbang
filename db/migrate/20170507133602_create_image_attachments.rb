class CreateImageAttachments < ActiveRecord::Migration
  def change
    create_table :image_attachments do |t|
      t.integer :house_id
      t.string :avatar

      t.timestamps null: false
    end
  end
end
