# Run the code. Change it so that it looks like the required output.
require 'erb'

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

recipe_title = "Recipe: #{recipe[:name]}"
ingredient_list = recipe[:ingredients].inject("") {|string, item| string + "#{item}\n" }

list = ""
recipe[:directions].each_with_index do |step, index|
  list += "#{index + 1}. #{step}\n"
  list += "\n"
end

recipe_template = <<-ERB

#=<%= "=" * recipe_title.length %>=#
# <%= recipe_title %> #
#=<%= "=" * recipe_title.length %>=#

Ingredients
-----------

<%= ingredient_list %>
Directions
----------

<%= list %>
ERB

erb = ERB.new(recipe_template)
binding.pry
puts erb.result
