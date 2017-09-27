class Game
    def initialize(name, players, board, dice)
        @name = name
        @players = players
        @board = board
        @dice = dice
    end

    def check_ladder(player)
        for number in @board.get_ladder_hash()
            if player.get_position == number[:start_point]
                player.set_position(number[:end_point])
                puts "#{player.get_name} climbed up a ladder to #{player.get_position}!"
            end
        end
        return player.get_position
    end

    def check_snake(player)
        for number in @board.get_snake_hash()
            if player.get_position == number[:start_point]
                player.set_position(number[:end_point])
                puts "#{player.get_name} was eaten by a snake and deficated to square #{player.get_position}!"
            end
        end
        return player.get_position
    end

    def check_win()
        for player in @players
            if player.get_position >= 100
                puts "#{player.get_name} has won!"
                return true
            end
        end
    end

    def player_turn(player)
        player.roll_dice(@dice)
        check_ladder(player)
        check_snake(player)
    end

    def start()
        until check_win() == true
            for player in @players
                player_turn(player)
                puts player.get_position
            end
        end
    end
end
