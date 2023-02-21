class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  jobs = [
    "Sword Fighter",
    "Lance Fighter",
    "Axe Fighter",
    "Archer",
    "Bow Knight",
    "Armor Knight",
    "Cavalier",
    "Mage",
    "Martial Monk",
    "Pegasus Knight",
    "Swordmaster",
    "Hero",
    "Halberdier",
    "Royal Knight",
    "Berserker",
    "Warrior",
    "Sniper",
    "General",
    "Paladin",
    "Wolf Knight",
    "Sage",
    "Mage Knight",
    "Martial Master",
    "Griffin Knight",
    "Wyvern Knight",
    "Thief",
    "Dancer"
]
  
  #GET list of users
  get "/users" do
    users = User.all
    users.to_json(:include => :characters)
  end

  #POST new character
  post '/users/characters/new' do
    character = Character.create(
      name: Faker::Name.first_name,
      user_id: params[:user_id],
      # char_sprite: "TBD",
      level: rand(1...20),
      job: jobs[rand(0...26)],
      hp: rand(20...60),
      str: rand(10...35),
      mag: rand(10...35),
      dex: rand(10...35),
      spd: rand(10...35),
      def: rand(5...35),
      res: rand(5...35),
      luk: rand(0...30)
    )

    character.save
    character.to_json
  end

  #POST new user
  post '/users/new' do
    user = User.create(username: params[:username])
    user.save
    user.to_json(:include => :characters)
  end

  #PATCH user's character
  patch '/users/characters/:id' do
    character = Character.find(params[:id])

    character.update(name: params[:name], job: params[:job])
    character.to_json
  end

  #PATCH user's name
  patch '/users/:id' do
    user = User.find(params[:id])

    user.update(username: params[:username])
    user.to_json(:include => :characters)
  end

  #DELETE user's character
  delete '/users/characters/:id' do
    character = Character.find(params[:id])

    character.destroy
    character.to_json
  end

  #DELETE user
  delete '/users/:id' do
    user = User.find(params[:id])

    user.characters.destroy_all
    user.destroy
    user.to_json
  end

end
