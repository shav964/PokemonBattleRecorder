class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :victories
      t.boolean :badge_earned

      t.timestamps
    end
  end
end
