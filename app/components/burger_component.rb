class BurgerComponent < ViewComponent::Base
  def initialize(burger:)
    @burger = burger
  end
end