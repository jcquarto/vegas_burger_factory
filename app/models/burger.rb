# == Schema Information
#
# Table name: burgers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_burgers_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Burger < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :burger_proteins
  has_many :proteins, through: :burger_proteins
  has_many :burger_ingredients
  has_many :ingredients, through: :burger_ingredients

  def price
    # a burger's price is the sum of the prices of its protein and ingredients
    price = 0
    if self.burger_proteins
      self.burger_proteins.each do |p|
        price += p.price_per * p.quantity
      end
    end

    if self.burger_ingredients
      self.burger_ingredients.each do |i|
        price += i.price_per * i.quantity
      end
    end

    price
  end
end
