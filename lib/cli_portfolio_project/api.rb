

class API

    HP_URL = "https://www.potterapi.com/v1/"
   

    def self.get_characters
        response = RestClient.get(HP_URL + "characters?key=$2a$10$nVLwDQ7csF0ev7JYzI0o5ehb6SbGK.Ut6iFbN0zAJIUkbjECSEY3S")
        binding.pry
    end

    

end