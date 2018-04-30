
require './board.rb'
require './game.rb'
require './player.rb'
require './ship.rb'

puts "Welcome to Battleships!"
puts "Player 1, place your ships on the board"
board = Board.new()
player_1 = Player.new()
player_1.board = board

board.display_board

puts "Select a start coordinate for your Carrier (ex.: A4)"
input = gets.strip
puts "Select orientation (type H for horizontal or V for vertical"
inputs = gets.strip

