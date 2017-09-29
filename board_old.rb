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
        # array = []
        # @snakes.each { |snake| array << snake.get_start_point() }
        # # for snake in @snakes
        # #     array << snake.get_start_point()
        # # end
        # return array
    end

    def snake_check_end_points()
        @snakes.map { |snake| snake.get_end_point() }
        # array = []
        # @snakes.each { |snake| array << snake.get_end_point() }
        # # for snake in @snakes
        # #     array << snake.get_end_point()
        # # end
        # return array
    end

    def ladder_check_start_points()
        @ladders.map { |ladder| ladder.get_start_point() }
        # array = []
        # @ladders.each { |ladder| array << ladder.get_start_point() }
        # # for ladder in @ladders
        # #     array << ladder.get_start_point()
        # # end
        # return array
    end

    def ladder_check_end_points()
        @ladders.map { |ladder| ladder.get_end_point() }
        # array = []
        # @ladders.each { |ladder| array << ladder.get_end_point() }
        # # for ladder in @ladders
        # #     array << ladder.get_end_point()
        # # end
        # return array
    end

    def get_ladder_hash()
        @ladders.map { |ladder| ladder.get_ladder()}
        # array = []
        # for ladder in @ladders
        #     array << ladder.get_ladder()
        # end
        # return array
    end

    def get_snake_hash()
        @snakes.map { |snake| snake.get_snake() }
        # array = []
        # for snake in @snakes
        #     array << snake.get_snake()
        # end
        # return array
    end


end
