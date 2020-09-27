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
class Protein < ApplicationRecord
	has_many :burger_proteins
	has_many :burgers, through: :burger_proteins

end
