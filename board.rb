class Board

    def initialize(size, snakes, ladders)
        @squares = size.to_i ** 2
        @snakes = snakes
        @ladders = ladders
    end

    def square_count()
        return @squares
    end

    def snake_check_start_points()
        array = []
        for snake in @snakes
            array << snake.get_start_point()
        end
        return array
    end

    def snake_check_end_points()
        array = []
        for snake in @snakes
            array << snake.get_end_point()
        end
        return array
    end

    def ladder_check_start_points()
        array = []
        for ladder in @ladders
            array << ladder.get_start_point()
        end
        return array
    end

    def ladder_check_end_points()
        array = []
        for ladder in @ladders
            array << ladder.get_end_point()
        end
        return array
    end

    def get_ladder_hash()
        array = []
        for ladder in @ladders
            array << ladder.get_ladder()
        end
        return array
    end

    def get_snake_hash()
        array = []
        for snake in @snakes
            array << snake.get_snake()
        end
        return array
    end


end
