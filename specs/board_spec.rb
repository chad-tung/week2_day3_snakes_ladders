require "minitest/autorun"
require "minitest/rg"
require_relative "../ladder"
require_relative "../snake"
require_relative "../board"

class TestBoard < MiniTest::Test
    def setup()

        @snakes = [
        @snake1 = Snake.new(29, 23),
        @snake2 = Snake.new(47, 21),
        @snake3 = Snake.new(56, 45),
        @snake4 = Snake.new(71, 65),
        @snake5 = Snake.new(80, 60),
        @snake6 = Snake.new(98, 54)
    ]

        @ladders = [
        @ladder1 = Ladder.new(12, 25),
        @ladder2 = Ladder.new(23, 33),
        @ladder3 = Ladder.new(40, 51),
        @ladder4 = Ladder.new(52, 65),
        @ladder5 = Ladder.new(57, 70),
        @ladder6 = Ladder.new(74, 90)
    ]

        @board = Board.new(10, @snakes, @ladders)

    end

    def test_square_count()
        assert_equal(100, @board.square_count())
    end

    def test_snake_check_points()
        expected = [29, 47, 56, 71, 80, 98]
        expected2 = [23, 21, 45, 65, 60, 54]
        assert_equal(expected, @board.snake_check_start_points())
        assert_equal(expected2, @board.snake_check_end_points())
    end

    def test_ladder_check_points()
        expected = [12, 23, 40, 52, 57, 74]
        expected2 = [25, 33, 51, 65, 70, 90]
        assert_equal(expected, @board.ladder_check_start_points())
        assert_equal(expected2, @board.ladder_check_end_points())
    end

    def test_get_ladder_hash()
        result = @board.get_ladder_hash()
        expected = [{:start_point=>12, :end_point=>25},
            {:start_point=>23, :end_point=>33},
            {:start_point=>40, :end_point=>51},
            {:start_point=>52, :end_point=>65},
            {:start_point=>57, :end_point=>70},
            {:start_point=>74, :end_point=>90}]
        assert_equal(expected, result)
    end

    def test_get_snake_hash()
        result = @board.get_snake_hash()
        expected = [{:start_point=>29, :end_point=>23},
            {:start_point=>47, :end_point=>21},
            {:start_point=>56, :end_point=>45},
            {:start_point=>71, :end_point=>65},
            {:start_point=>80, :end_point=>60},
            {:start_point=>98, :end_point=>54}]
        assert_equal(expected, result)
    end


end
