require_relative "room"

class Hotel
  
    ## PART 2 ##

    def initialize(name, rooms_hash)
        @name = name
        @rooms = Hash.new
        rooms_hash.map { |k, v| @rooms[k] = Room.new(v)}
    end

    def name
        @name.split(' ').map(&:capitalize).join(' ')
    end

    def rooms
        @rooms
    end

    def room_exists?(room_name)
        @rooms.key?(room_name)
    end

    def check_in(guest_name, room_name)
        if room_exists?(room_name)
            room = @rooms[ room_name]
            if room.add_occupant( guest_name)
                puts 'check in successful'
                true
            else
                puts 'sorry, room does not exist'
                false
            end
        else
            puts 'sorry, room does not exist'
            false
        end
    end

    def has_vacancy?
        @rooms.all? {|k, v| v.full?} ? false : true
    end

    def list_rooms
        @rooms.map {|k, v| puts k + v.available_space.to_s}
    end

end

hotel = Hotel.new("hilbert's grand hotel", "Basement"=>4, "Attic"=>2, "Under the Stairs"=>1)
hotel.check_in('Absee', 'Baement')
