class Game
  attr_accessor :player_1, :player_2

  def place_ships(player)
    player.fleet.each do |ship|
      position_ship(ship)
      player.board.display_board
    end
    
  end

  def position_ship(ship)
    puts "Select a start coordinate for your #{ship.name} (ex.: A4)"
    coordinates = gets.strip
    orientation = ""
    if ship.size > 1
      puts "Select orientation (type H for horizontal or V for vertical"
      orientation = gets.strip
    end
    if player_1.board.validate_placement(ship, coordinates, orientation)
      player_1.board.place_ship(ship, coordinates, orientation)
    else
      puts "Invalid placement. Please try again."
      position_ship(ship)
    end
  end

end