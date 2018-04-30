class Ship
  attr_accessor :name, :size, :coordinates, :direction
  def initialize(name, size, coordinates, direction)
    self.size = size
    self.coordinates = coordinates
    self.direction = direction
  end
end

class Carrier < Ship
  def initialize(name = "Carrier", size = 5, coordinates, direction)
    super
  end
end

class Battleship < Ship
  def initialize(name = "Battleship", size = 4, coordinates, direction)
    super
  end
end

class Cruiser < Ship
  def initialize(name = "Cruiser", size = 3, coordinates, direction)
    super
  end
end

class Destroyer < Ship
  def initialize(name = "Destroyer", size = 2, coordinates, direction)
    super
  end
end

class Submarine < Ship
  def initialize(name = "Submarine", size = 1, coordinates, direction)
    super
  end
end



