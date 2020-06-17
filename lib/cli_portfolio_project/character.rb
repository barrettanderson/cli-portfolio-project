class Character

    attr_accessor :name, :role, :house, :school, :boggart, :__v, :ministryOfMagic, :orderOfThePhoenix, :dumbledoresArmy, :deathEater, :bloodStatus, :species

    @@all = []

    def initialize(name:, role:, house:, school:, boggart:, __v:, ministryOfMagic:, orderOfThePhoenix:, dumbledoresArmy:, deathEater:, bloodStatus:, species:)
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

        self.save
    end

    def save
        @@all << self
    end


end