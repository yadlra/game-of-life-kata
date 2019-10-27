class Cell
    attr_accessor :grid, :x, :y

    def initialize(grid, x=0, y=0)
        @grid = grid
        @x = x
        @y = y
        grid.cells << self 
    end 

    def neighbours
        @neighbours = []
        grid.cells.each do |cell| 
             if self.x == cell.x && self.y == cell.y - 1
                @neighbours << cell
             end 
        end 
        @neighbours
    end
    
    def reproduce_at(x, y)
        Cell.new(grid, x, y)
    
    end 
end 

class Grid
    attr_accessor :cells
    def initialize
        @cells = []
    end 
end 