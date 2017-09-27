require "minitest/autorun"
require "minitest/rg"
require_relative "../ladder"

class TestLadder < MiniTest::Test


    def setup()
        @ladder1 = Ladder.new(9, 25)
        @ladder2 = Ladder.new(18, 34)
    end

    def test_ladder_end()
        result = @ladder1.get_end_point()
        assert_equal(25, result)
    end

    def test_ladder_start()
        result = @ladder2.get_start_point()
        assert_equal(18, result)
    end

    def test_get_ladder()
        result = @ladder1.get_ladder
        expected = {start_point: 9, end_point: 25}
        assert_equal(result, expected)
    end

end
