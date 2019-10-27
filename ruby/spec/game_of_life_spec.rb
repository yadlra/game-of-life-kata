require 'game_of_life.rb'

describe 'game of life' do 
  it 'any live cell with less than 2 live neighbors, dies' do
  cell = Cell.new
  expect(cell.neighbours_count).to eq(0)
  end 
end 