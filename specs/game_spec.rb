require "minitest/autorun"
require "minitest/rg"
require_relative "../ladder"
require_relative "../snake"
require_relative "../board"
require_relative "../player"
require_relative "../dice"
require_relative "../game"

class TestGame < MiniTest::Test
    def setup()
        @dice = Dice.new(6)

        @players = [
        @player1 = Player.new("Chad", 1),
        @player2 = Player.new("Tobi", 1),
        @player3 = Player.new("Oreofe", 1),
        @player4 = Player.new("Michael", 1)
    ]

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

        @game = Game.new("Snakes&Ladders", @players, @board, @dice)

        @player_test = Player.new("Chad", 52)
        @player_test_2 = Player.new("Tobi", 80)
        @player_test_3 = Player.new("Oreofe", 100)

    end

    def test_check_ladder()

        result = @game.check_ladder(@player_test)
        expected = 65
        assert_equal(result, expected)


    end

    def test_check_snake()
        result2 = @game.check_snake(@player_test_2)
        expected2 = 60
        assert_equal(result2, expected2)
    end

    def test_check_win()
        result3 = @game.check_win(@player_test_3)
        expected3 = true
        assert_equal(result3, expected3)
    end
end
