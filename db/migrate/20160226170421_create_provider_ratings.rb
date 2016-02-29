class CreateProviderRatings < ActiveRecord::Migration
  def change
    create_table :provider_ratings do |t|
      t.integer :rating
      t.text :comment
      t.integer :provider_id

      t.timestamps null: false
    end
  end
end
