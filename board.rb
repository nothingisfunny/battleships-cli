class Board 
  attr_accessor :grid

  def initialize
    letters = Array("A".."J")
    self.grid = {}
    letters.each{|char| grid[char] = Array.new(10, "")}
  end

  def display_board
    puts " 1  2  3  4  5  6  7  8  9  10"
    self.grid.each do |key, value|
      value = value.map{|cell| cell == "" ? " _|" : " X|"}
      puts "#{key}#{value.join("")}"
    end
    return nil
  end

  def place_ship(ship, coordinates, orientation)
    row = coordinates.split("")[0] 
    col = coordinates.split("")[1].to_i - 1
    ship.coordinates = [row, col]
    ship.orientation = orientation
    self.grid[row][col] = ship
    if ship.size > 1
      if ship.orientation == "H"
        (ship.size - 1).times do 
          self.grid[row][col + 1] = ship
          col += 1
        end
      elsif ship.orientation == "V"
        (ship.size - 1).times do 
          self.grid[row.next][col] = ship
          row = row.next
        end
      end
    end
  end

  def validate_placement(ship, coordinates, orientation)
    row = coordinates.split("")[0] 
    col = coordinates.split("")[1].to_i - 1
    if !self.grid[row][col].empty? || self.grid[row][col] == nil
      return false
    elsif orientation == "H"
      (ship.size - 1).times do 
        return false if !self.grid[row][col + 1].empty? || self.grid[row][col + 1] == nil
        col += 1
      end
    elsif orientation == "V"
      (ship.size - 1).times do 
        return false if !self.grid[row.next]
        row = row.next
      end
    end
    return true
  end

end
