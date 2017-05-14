class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    capacity = 0
    @ingredient = ingredient
    while capacity < @maximum_holding_weight do
      @ingredients << Ingredient.new(ingredient, @kg)
      capacity += ingredient.weight
    end
    @weight += capacity.to_i
  end

  def which_ingredient
    @ingredient.name
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients.clear
  end

end
