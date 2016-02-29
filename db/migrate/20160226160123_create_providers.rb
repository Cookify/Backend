class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
