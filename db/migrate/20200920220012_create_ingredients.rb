class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :price
      t.string :color

      t.timestamps
    end
  end
end
