require 'game_of_life.rb'

describe 'game of life' do
    let(:grid) { Grid.new } 
  context "cell methods" do
    subject { Cell.new(grid) }

    it "returns a cell object" do
      cell = subject.reproduce_at(3,5)
      expect(cell.is_a?(Cell)).to be true
      expect(cell.x).to eq 3
      expect(cell.y).to eq 5
      expect(cell.grid).to eq subject.grid
    end 
  

    it "finds a neighbour north" do
      cell = subject.reproduce_at(0,1)
      expect(subject.neighbours.count).to eq(1)
    end

    it "finds neighbour northeast" do
        cell = subject.reproduce_at(1, 1)
        expect(subject.neighbours.count).to eq(1)
    end 

    it "find neighbour to west" do
        cell = subject.reproduce_at(-1, 0)
        expect(subject.neighbours.count).to eq(1) 
    end 

    it "dies" do
        subject.die!
        expect(subject.grid.cells).to_not include(subject)
    end 
  end 
        

  it '1.any live cell with less than 2 live neighbors, dies' do
    cell = Cell.new(grid)
    new_cell = cell.reproduce_at(2,0)
    grid.tick!#when the seed goes through the tick the cell should be dead
    expect(cell).to be_dead
  end 

  it "2.any live cell has 2 or 3 live neighbors; next generation" do
     cell = Cell.new(grid)
     new_cell = cell.reproduce_at(1,0)
     other_new_cell = cell.reproduce_at(-1,0)
     grid.tick!
     expect(cell).to be_alive
  end 
end 