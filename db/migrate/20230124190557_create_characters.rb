class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name, :job, :char_sprite
      t.integer :user_id
      t.integer :level
      t.integer :hp, :str, :mag, :dex, :spd, :def, :res, :luk
    end
  end
end
