class Cell
    attr_accessor :x, :y

    def initialize(x=0, y=0)
        @x = x
        @y = y
    end 

    def neighbours
        []
    end
    
    def reproduce_at(x, y)
        Cell.new(x, y)
    end 
end 