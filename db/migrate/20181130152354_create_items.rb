class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.integer :likes_count

      t.timestamps
    end
  end
end
