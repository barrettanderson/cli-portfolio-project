class Character

    attr_accessor :name, :role, :house, :school, :boggart, :ministryOfMagic, :orderOfThePhoenix, :dumbledoresArmy, :deathEater, :bloodStatus, :species, :patronus, :wand, :animagus, :_id

    @@all = []

    def initialize(name:, role:, house:, school:, boggart:, ministryOfMagic:, orderOfThePhoenix:, dumbledoresArmy:, deathEater:, bloodStatus:, 
        species:, patronus: nil, wand: nil, animagus: nil, _id:)
        self.name = name
        self.role = role
        self.house = house
        self.school = school
        self.boggart = boggart
        self.ministryOfMagic = ministryOfMagic
        self.orderOfThePhoenix = orderOfThePhoenix
        self.dumbledoresArmy = dumbledoresArmy
        self.deathEater = deathEater
        self.bloodStatus = bloodStatus
        self.species = species
        self.patronus = patronus
        self.wand = wand
        self.animagus = animagus
        self._id = _id

        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end