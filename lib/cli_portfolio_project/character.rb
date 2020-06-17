class Character

    attr_accessor :name, :role, :house, :school, :boggart, :__v, :ministryOfMagic, :orderOfThePhoenix, :dumbledoresArmy, :deathEater, :bloodStatus, :species

    @@all = []

    def initialize(name:, role:, house:, school:, boggart:, __v:, ministryOfMagic:, orderOfThePhoenix:, dumbledoresArmy:, deathEater:, bloodStatus:, 
        species:, patronus: nil, wand: nil, animagus: nil)
        self.name = name
        self.role = role
        self.house = house
        self.school = school
        self.boggart = boggart
        self.__v = __v
        self.ministryOfMagic = ministryOfMagic
        self.orderOfThePhoenix = orderOfThePhoenix
        self.dumbledoresArmy = dumbledoresArmy
        self.deathEater = deathEater
        self.bloodStatus = bloodStatus
        self.species = species
        self.patronus = patronus
        self.wand = wand
        self.animagus = animagus

        self.save
    end

    def save
        @@all << self
    end


end