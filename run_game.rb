require_relative "ladder.rb"
require_relative "snake.rb"
require_relative "board.rb"
require_relative "player.rb"
require_relative "dice.rb"
require_relative "game.rb"


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
    @game.start()
end

setup()
