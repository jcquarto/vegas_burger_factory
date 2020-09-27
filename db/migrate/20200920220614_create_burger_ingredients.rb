class CreateBurgerIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :burger_ingredients do |t|
      t.references :burger, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
