# == Schema Information
#
# Table name: burger_ingredients
#
#  id            :bigint           not null, primary key
#  price_per     :integer          default(0)
#  quantity      :integer          default(1)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  burger_id     :bigint           not null
#  ingredient_id :bigint           not null
#
# Indexes
#
#  index_burger_ingredients_on_burger_id      (burger_id)
#  index_burger_ingredients_on_ingredient_id  (ingredient_id)
#
# Foreign Keys
#
#  fk_rails_...  (burger_id => burgers.id)
#  fk_rails_...  (ingredient_id => ingredients.id)
#
class BurgerIngredient < ApplicationRecord
  belongs_to :burger
  belongs_to :ingredient
end
