
require './board.rb'
require './game.rb'
require './player.rb'
require './ship.rb'
require 'pry'

puts "Welcome to Battleships!"
puts "Player 1, place your ships on the board"
board = Board.new()
player_1 = Player.new()
player_1.board = board

#display empty board
board.display_board

#iterate through fleet and prompt user to place each ship
player_1.fleet.each do |ship|
  puts "Select a start coordinate for your #{ship.name} (ex.: A4)"
  coordinates = gets.strip
  puts "Select orientation (type H for horizontal or V for vertical"
  orientation = gets.strip
  player_1.board.place_ship(ship, coordinates, orientation)
end




