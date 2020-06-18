

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
            ministryOfMagic = character_data["ministryOfMagic"]
            orderOfThePhoenix = character_data["orderOfThePhoenix"]
            dumbledoresArmy = character_data["dumbledoresArmy"]
            deathEater = character_data["deathEater"]
            bloodStatus = character_data["bloodStatus"]
            species = character_data["species"]
            patronus = character_data["patronus"]
            wand = character_data["wand"]
            animagus = character_data["animagus"]
            _id = character_data["_id"]
            Character.new(
                name: name,
                role: role,
                house: house,
                school: school,
                boggart: boggart,
                ministryOfMagic: ministryOfMagic,
                orderOfThePhoenix: orderOfThePhoenix,
                dumbledoresArmy: dumbledoresArmy,
                deathEater: deathEater, 
                bloodStatus: bloodStatus,
                species: species,
                patronus: patronus,
                wand: wand,
                animagus: animagus,
                _id: _id
            )
            # binding.pry
        end
    end


end