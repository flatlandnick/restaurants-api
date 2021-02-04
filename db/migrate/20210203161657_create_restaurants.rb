class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :rating
      t.boolean :is_chain
      t.belongs_to :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
