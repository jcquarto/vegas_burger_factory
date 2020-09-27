# == Schema Information
#
# Table name: ingredients
#
#  id         :bigint           not null, primary key
#  color      :string
#  name       :string
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Ingredient < ApplicationRecord
	has_many :burger_ingredients
	has_many :burgers, through: :burger_ingredients
end
