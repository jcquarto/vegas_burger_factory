# == Schema Information
#
# Table name: proteins
#
#  id          :bigint           not null, primary key
#  color       :string
#  description :text
#  name        :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class ProteinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
