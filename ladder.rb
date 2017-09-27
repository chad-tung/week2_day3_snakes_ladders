class Ladder
    def initialize(start_point, end_point)
        @start = start_point.to_i
        @end = end_point.to_i
        @ladder_hash = {start_point: @start, end_point: @end}
    end

    def get_end_point()
        return @end
    end

    def get_start_point()
        return @start
    end

    def get_ladder()
        return @ladder_hash
    end

end
