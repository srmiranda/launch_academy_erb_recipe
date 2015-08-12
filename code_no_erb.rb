# Run the code. Change it so that it looks like the required output.
recipe = {
  name: "Roasted Brussels Sprouts",
  ingredients: [
    "1 1/2 pounds Brussels sprouts",
    "3 tablespoons good olive oil",
    "3/4 teaspoon kosher salt",
    "1/2 teaspoon freshly ground black pepper"
  ],
  directions: [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
  ]
}

class Recipe
  attr_accessor :recipe

  def initialize(recipe)
    @recipe = recipe
  end


  def direction_list
    list = ""
    recipe[:directions].each_with_index do |step, index|
      list += "#{index + 1}. #{step}\n"
      list += "\n"
    end
    list
  end

  def ingredient_list
    recipe[:ingredients].inject("") {|string, ingredient| string + "#{ingredient}\n" }
  end

  def summary
    ingredient_title = "Ingredients"
    directions_title = "Directions"
    string = ""
    string += "#=" + "=" * "#{recipe[:name]}".length + "=#\n"
    string += "# #{recipe[:name]} #\n"
    string += "#=" + "=" * "#{recipe[:name]}".length + "=#\n"
    string += "\n"
    string += "#{ingredient_title}\n"
    string += "-" * ingredient_title.length + "\n"
    string += "\n"
    string += "#{ingredient_list}\n"
    string += "#{directions_title}\n"
    string += "-" * directions_title.length + "\n"
    string += "\n"
    string += "#{direction_list}\n"
  end
end

new_recipe = Recipe.new(recipe)
puts new_recipe.summary
