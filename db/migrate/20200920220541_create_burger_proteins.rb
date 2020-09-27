class CreateBurgerProteins < ActiveRecord::Migration[6.0]
  def change
    create_table :burger_proteins do |t|
      t.references :burger, null: false, foreign_key: true
      t.references :protein, null: false, foreign_key: true

      t.timestamps
    end
  end
end
