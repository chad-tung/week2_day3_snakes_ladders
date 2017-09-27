require "minitest/autorun"
require "minitest/rg"
require_relative "../dice"

class TestDice < MiniTest::Test
    def setup()
        @dice = Dice.new(6)
    end
    def test_roll_dice()
        result = (1..6).include?(@dice.roll())
        assert_equal(true, result)
    end
end
