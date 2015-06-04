#YOUR CODE GOES HERE
require 'pry'
require_relative 'ingredient'
require_relative 'recipe'



  ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")

puts ingredient.valid?

# puts ingredient.summary

  recipe = Recipe.new("Roasted Brussels Sprouts", [
      "Preheat oven to 400 degrees F.",
      "Cut off the brown ends of the Brussels sprouts.",
      "Pull off any yellow outer leaves.",
      "Mix them in a bowl with the olive oil, salt and pepper.",
      "Pour them on a sheet pan and roast for 35 to 40 minutes.",
      "They should be until crisp on the outside and tender on the inside.",
      "Shake the pan from time to time to brown the sprouts evenly.",
      "Sprinkle with more kosher salt ( I like these salty like French fries).",
      "Serve and enjoy!"
      ], [
      Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
      Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
      Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
      Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")])

#  puts recipe.summary

  new_recipe = Recipe.new("Braised Short Rib", ["Chop up onions, set aside.",
    "Chop up celery.", "Clean and chop mushrooms.", "Season short rib.",
    "Place short rib in slow-cooker.", "Place veggies in slow-cooker.",
    "Add beef broth and wine.", "Cook on low for eight hours.", "Serve and enjoy!"],
    [Ingredient.new(2, "lb(s)", "Beef short rib"),
    Ingredient.new(2, "ct", "Onions"),
    Ingredient.new(4, "stalks", "Celery"),
    Ingredient.new(1, "pkg", "Mushrooms"),
    Ingredient.new(1, "box", "Beef broth"),
    Ingredient.new(0.25, "bottle", "Red wine"),
    Ingredient.new(0.75, "tspn(s)", "Short rib seasoning"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")])

    weird_recipe = Recipe.new("Just drinking", ["Drink wine.", "Drink whiskey.", "Drink beer."],
    [Ingredient.new(2, "bottle", "beer"),
    Ingredient.new(2, "bottle", "wine"),
    Ingredient.new(4, "bottle", "whiskey")])

# puts new_recipe.summary

puts new_recipe.safe_to_eat

puts weird_recipe.safe_to_eat

carrots = Ingredient.parse("4 pounds brussels sprouts")

puts carrots.summary
