require 'json'

pokemon_data = JSON.parse(File.read('db/pokemon_data.json'))
pokemon_data.each do |data|
  Pokemon.create(name: data['name'], victories: data['victories'], badge_earned: data['badge_earned'])
end