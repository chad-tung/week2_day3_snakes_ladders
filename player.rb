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
        @position += dice.roll()
        puts "#{@name} has moved to #{@position}"
        return @position
    end

    def set_position(position)
        @position = position
    end


end
