class AddPriceToBurgerProteins < ActiveRecord::Migration[6.0]
  def change
    add_column :burger_proteins, :price_per, :integer, default: 0
    add_column :burger_proteins, :quantity, :integer, default: 1

    add_column :burger_ingredients, :price_per, :integer, default: 0
  end  
end
