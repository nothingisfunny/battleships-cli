class Ship
  attr_accessor :name, :size, :coordinates, :orientation
  def initialize(name, size, coordinates = [], orientation = "")
    self.size = size
    self.name = name
    self.coordinates = coordinates
    self.orientation = orientation
  end
end

class Carrier < Ship
  def initialize(name = "Carrier", size = 5)
    super
  end
end

class Battleship < Ship
  def initialize(name = "Battleship", size = 4)
    super
  end
end

class Cruiser < Ship
  def initialize(name = "Cruiser", size = 3)
    super
  end
end

class Destroyer < Ship
  def initialize(name = "Destroyer", size = 2)
    super
  end
end

class Submarine < Ship
  def initialize(name = "Submarine", size = 1)
    super
  end
end



