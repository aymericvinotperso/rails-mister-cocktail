require 'open-uri'
require 'json'

# cocktails = Cocktail.all
# cocktails.destroy

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)


ingredients["drinks"].each do |hash|
  Ingredient.create(name: hash["strIngredient1"])
end
