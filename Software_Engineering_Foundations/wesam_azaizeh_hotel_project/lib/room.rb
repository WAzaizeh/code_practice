class Room

    ## PART 1 ##

    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        @occupants.size < @capacity ? false : true
    end

    def available_space
        @capacity - @occupants.size
    end

    def add_occupant(name)
        if self.full?
            false
        else
            @occupants << name
            true
        end
    end
    
end