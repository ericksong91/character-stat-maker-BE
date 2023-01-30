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

  post '/users/characters/new' do
    character = Character.create(
      name: Faker::Name.first_name,
      job: jobs[rand(0...26)],
      char_sprite: "TBD",
      user_id: params[:user_id],
      level: rand(1...20),
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

  patch '/users/characters/:id' do
    character = Character.find(params[:id])

    character.update(name: params[:name], job: params[:job])
    character.to_json
  end

  delete '/users/characters/:id' do
    character = Character.find(params[:id])

    character.destroy
    character.to_json
  end
  

end
