# Cuisine model seed
# cuisines = ["chinese", "mexican", "italian", "japanese", "sushi", "greek", "french", "cajun", "thai", "spanish", "indian", "mediterranean"]
# cuisines.each do |cuisine|
# 	Cuisine.create(name: cuisine)
# end


response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/random?limitLicense=false&number=100",
  headers:{
    "X-Mashape-Key" => "mjujTXvEe0mshWJmTGHz9riuUeIRp1CtxpRjsnnvhfdmxs5G41",
    "Accept" => "application/json"
  },
  parameters:

SpoonacularDev.create(data: response.body)