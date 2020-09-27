class ProteinComponent < ViewComponent::Base
  
  # attr_reader :other_name
  def initialize(name:)
    @name = name
    @other_name = other_name
  end

  def other_name
    'Katze'
  end
end
