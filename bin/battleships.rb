
require './board.rb'
require './game.rb'
require './player.rb'
require './ship.rb'
require 'pry'

puts "Welcome to Battleships!"
puts "Player 1, place your ships on the board"
board_1 = Board.new()
board_2 = Board.new()
player_1 = Player.new()
player_2 = Player.new()
game = Game.new()
game.player_1 = player_1
game.player_2 = player_2
player_1.board = board_1
player_2.board = board_2

#display empty board
game.player_1.board.display_board
game.place_ships(player_1)

puts `clear`

puts "Player 2, place your ships on the board"
game.player_2.board.display_board
game.place_ships(player_2)









