class Board 
  attr_accessor :grid

  def initialize
    letters = Array("A".."J")
    self.grid = {}
    letters.each{|char| grid[char] = Array.new(10, " _|")}
  end

  def display_board
    puts " 1  2  3  4  5  6  7  8  9  10"
    self.grid.each do |key, value|
      puts "#{key}#{value.join("")}"
    end
    return nil
  end

  def place_ship(ship, coordinates, orientation)
    row = coordinates.split("")[0]
    col = coordinates.split("")[1]
    ship.coordinates = [row, col]
    ship.orientation = orientation
  end
end
