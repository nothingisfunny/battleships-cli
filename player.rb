class Player
  attr_accessor :board, :fleet

  def initialize()
    self.fleet = [Carrier.new(), 
                  Battleship.new(), 
                  Cruiser.new(), Cruiser.new(), 
                  Destroyer.new(), Destroyer.new(),
                  Submarine.new(), Submarine.new(), Submarine.new()]
  end
end

