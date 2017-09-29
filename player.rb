class Player
    def initialize(name, position)
        @name = name
        @position = position.to_i
    end

    def get_position()
        return @position
    end

    def get_name()
        return @name
    end

    def roll_dice(dice)
        #if you want to change win conditions so that you must land on
        #the last tile to win, probably easiest to redefine this, so
        #that @position doesn't automatically update, but rather store
        #the new_position in a variable, which only updates if the new
        #position is equal to or less than the winning tile. If it
        #exceeds, what you can do is subtract the difference between the
        #tile number and new_position from the tile number. ie. if a
        #6 is rolled on 99, new_position=105, actual_position = tile_no
        #- (new_position - tile_number) = 95.
        @position += dice.roll()
        puts "#{@name} has moved to #{@position}"
        return @position
    end

    def set_position(position)
        @position = position
    end


end
