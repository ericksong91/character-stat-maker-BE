require 'pry'

puts "🌱 Seeding Users and Characters..."

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


10.times do 
    user = User.create(username: "#{Faker::Name.first_name}##{rand(1000...9999)}")

    rand(1...10).times do
        Character.create(
            name: Faker::Name.first_name,
            job: jobs[rand(0...26)],
            char_sprite: "TBD",
            user_id: user.id,
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
    end

end


puts "✅ Done seeding!"
