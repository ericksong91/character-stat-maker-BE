class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/characters" do
    character = Character.all
    character.to_json
  end

  get "/users/:id" do
    character = User.find(params[:id]).characters
    character.to_json
  end

end
