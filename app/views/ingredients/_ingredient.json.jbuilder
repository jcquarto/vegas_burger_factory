json.extract! ingredient, :id, :name, :price, :color, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
