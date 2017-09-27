require "minitest/autorun"
require "minitest/rg"
require_relative "../snake"

class TestSnake < MiniTest::Test


    def setup()
        @snake1 = Snake.new(56, 40)
        @snake2 = Snake.new(76, 37)
    end

    def test_snake_end()
        result = @snake1.get_end_point()
        assert_equal(40, result)
    end

    def test_snake_start()
        result = @snake2.get_start_point()
        assert_equal(76, result)
    end

    def test_get_snake()
        result = @snake1.get_snake()
        expected = {start_point: 56, end_point: 40}
    end

end
