

class API

    HP_URL = "https://www.potterapi.com/v1/"
   

    def self.get_characters
        response = RestClient.get(HP_URL + "characters?key=$2a$10$nVLwDQ7csF0ev7JYzI0o5ehb6SbGK.Ut6iFbN0zAJIUkbjECSEY3S")
        data = JSON.parse(response)
        
        data.each do |character_data|
            name = character_data["name"]
            role = character_data["role"]
            house = character_data["house"]
            school = character_data["school"]
            boggart = character_data["boggart"]
            __v = character_data["__v"]
            ministryOfMagic = character_data["ministryOfMagic"]
            orderOfThePhoenix = character_data["orderOfThePhoenix"]
            dumbledoresArmy = character_data["dumbledoresArmy"]
            deathEater = character_data["deathEater"]
            bloodStatus = character_data["bloodStatus"]
            species = character_data["species"]
            
            binding.pry
        end
    end
#(name:, role:, house:, school:, boggart:, __v:, ministryOfMagic:, orderOfThePhoenix:, dumbledoresArmy:, deathEater:, bloodStatus:, species:)
#  , __v:,  )
#   patronus,  alias, wand, animagus
# (name:, role:, house:, school:, boggart:, __v:, ministryOfMagic:, orderOfThePhoenix:, dumbledoresArmy:, deathEater:, bloodStatus:, 
#species:, patronus: nil, wand: nil, animagus: nil)
    

end