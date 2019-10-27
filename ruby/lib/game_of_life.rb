class Cell
    attr_accessor :grid, :x, :y

    def initialize(grid, x=0, y=0)
        @grid = grid
        @x = x
        @y = y
        grid.cells << self 
    end 

    def die!
        grid.cells -= [self]
    end 

    def dead?
        !grid.cells.include?(self)
    end 

    def neighbours
        @neighbours = []
        grid.cells.each do |cell| 
            #north
             if self.x == cell.x && self.y == cell.y - 1
                @neighbours << cell
             end
            #northeast
            if self.x == cell.x - 1 && self.y == cell.y - 1
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

    def tick!
        cells.each do |cell|
            if cell.neighbours.count < 2
                cell.die!
            end  
        end 
    end 
end 