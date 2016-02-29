class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.integer :duration
      t.integer :provider_id

      t.timestamps null: false
    end
  end
end
