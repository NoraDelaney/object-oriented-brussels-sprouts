class Recipe
  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def ingredients_list
    string = ""
    @ingredients.each do |ingredient|
      string += "- #{ingredient.summary}\n"
    end
    string
  end

  def instruction_list
    string = ""
    @instructions.each_with_index.map do |instruction, i|
    string += "#{i+1}. #{instruction}\n"
    end
  string
  end

  def summary
   %(Name: #{@name}

   Ingredients
  #{ingredients_list}

   Instructions
 #{instruction_list})
  end

  def safe_to_eat
    foods_array = []
    @ingredients.each do |ingredient|
      foods_array << ingredient.valid?
    end
    if foods_array.include?("Oh no.")
      return false
    else
      return true
    end
  end


end
