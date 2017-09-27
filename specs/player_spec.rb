require "minitest/autorun"
require "minitest/rg"
require_relative "../player"
require_relative "../dice"

class TestPlayer < MiniTest::Test
    def setup()
        @player1 = Player.new("Chad", 10)
        @player2 = Player.new("Tobi", 12)
        @dice = Dice.new(6)
    end

    # def test_roll_dice()
    #     result = @player1.roll_dice(@dice)
    #     assert_equal(13, result)
    # end

    def test_set_position()
        @player2.set_position(40)
        @player1.set_position(18)
        assert_equal(40, @player2.get_position)
        assert_equal(18, @player1.get_position)
    end

end
