require 'pokemon_tcg_sdk'
#puts 'Hello World'
Pokemon.configure do |config|
  config.api_key = "d18f8685-cf56-4c12-b6cf-2f49891d3cae"
end

def getCardImageURLbyID(cardID)
    card = Pokemon::Card.find(cardID)
    return card.images.large
end
puts getCardImageURLbyID('xy1-1')
