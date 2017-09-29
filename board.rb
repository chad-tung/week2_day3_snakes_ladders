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
        @snakes.map { |snake| snake.get_start_point() }
    end

    def snake_check_end_points()
        @snakes.map { |snake| snake.get_end_point() }
    end

    def ladder_check_start_points()
        @ladders.map { |ladder| ladder.get_start_point() }
    end

    def ladder_check_end_points()
        @ladders.map { |ladder| ladder.get_end_point() }
    end

    def get_ladder_hash()
        @ladders.map { |ladder| ladder.get_ladder()}
    end

    def get_snake_hash()
        @snakes.map { |snake| snake.get_snake() }
    end


end
