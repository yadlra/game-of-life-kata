require 'game_of_life.rb'

describe 'game of life' do
    let(:grid) { Grid.new } 
  context "cell methods" do
    subject { Cell.new }

    it "returns a cell object" do
      cell = subject.reproduce_at(3,5)
      expect(cell.is_a?(Cell)).to be true
      expect(cell.x).to eq 3
      expect(cell.y).to eq 5
      expect(cell.grid).to eq subject.grid
    end 
  end 

  it "finds a neighbour north" do
    cell = subject.reproduce_at(0, 1)
    expect(subject.neighbours.count).to eq(1)
  end
        

  it 'any live cell with less than 2 live neighbors, dies' do
    cell = Cell.new(grid)
    expect(cell.neighbours.count).to eq(0)
  end 
end 