class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :name
      t.string :image_url
      t.string :country
      t.text :description
      t.string :mood
      t.string :taste
      t.integer :nutrition_level
      t.string :seller_url
    end
  end
end
