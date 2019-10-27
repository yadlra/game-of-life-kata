require 'game_of_life.rb'

describe 'game of life' do 
  context "cell methods" do
    subject { Cell.new }

    it "returns a cell object" do
      cell = subject.reproduce_at(3,5)
      expect(cell.is_a?(Cell)).to be true
      expect(cell.x).to eq 3
      expect(cell.y).to eq 5
    end 
  end 
        

  it 'any live cell with less than 2 live neighbors, dies' do
    cell = Cell.new
    expect(cell.neighbours.count).to eq(0)
  end 
end 