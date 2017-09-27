class Dice
    def initialize(dice_number)
        @faces = dice_number.to_i
    end
    def roll()
        rand(1..@faces)
    end
end
