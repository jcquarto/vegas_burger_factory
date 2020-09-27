# == Schema Information
#
# Table name: burger_proteins
#
#  id         :bigint           not null, primary key
#  price_per  :integer          default(0)
#  quantity   :integer          default(1)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  burger_id  :bigint           not null
#  protein_id :bigint           not null
#
# Indexes
#
#  index_burger_proteins_on_burger_id   (burger_id)
#  index_burger_proteins_on_protein_id  (protein_id)
#
# Foreign Keys
#
#  fk_rails_...  (burger_id => burgers.id)
#  fk_rails_...  (protein_id => proteins.id)
#
require 'test_helper'

class BurgerProteinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
