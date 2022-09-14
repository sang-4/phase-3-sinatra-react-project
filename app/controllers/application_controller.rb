class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/users" do
    User.all.to_json
  end

  get "/recipes" do
    Recipe.all.to_json
  end
  
  get "/users/:id" do
    User.find(params[:id]).to_json
  end

  post "/users" do
    user = User.new(params[:user])
    user.save
    user.to_json
  end

  get "/saved_Recipes" do
    Saved_Recipe.all.to_json:include => :recipe
  end

  post "/saved_Recipes" do
    recipe = Recipe.new(params[:recipe])
    recipe.save
    recipe.to_json
  end

  delete "/saved_Recipes" do
    Saved_Recipes.find(params[:id]).destroy
  end


end
