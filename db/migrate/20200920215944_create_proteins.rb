class CreateProteins < ActiveRecord::Migration[6.0]
  def change
    create_table :proteins do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :color

      t.timestamps
    end
  end
end
