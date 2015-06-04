class Ingredient

  attr_accessor :quantity, :unit, :name

  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
    @safe_foods = ["brussels sprouts", "spinach", "eggs", "milk", "tofu", "seitan", "bell peppers", "quinoa", "kale", "chocolate", "beer", "wine", "whiskey"]
  end

  def valid?
    if @safe_foods.include?(@name.downcase)
    "This is a safe food."
    else
    "Oh no."
    end
  end

  def self.parse(ingredient_string)
    array = ingredient_string.split
    quantity = array.slice!(0)
    unit = array.slice!(0)
    name = array.join(" ")

    Ingredient.new(quantity, unit, name)
  end

  def summary
    <<-SUMMARY
#{@quantity} #{@unit} #{@name}
    SUMMARY
  end
end
