WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left side
  [1,4,7], # Center vertical
  [2,5,8], # Right Side
  [2,4,6], # Diagnol 1
  [0,4,8] # Diagnol 2
]
def display_board(board=[" ", " ", " ", " ", " ", " ", " ", " ", " ", ])

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  index = num.to_i - 1

  return index
end

def move(array, index, character)
  array[index] = character
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def on_board?(num)
  if num.between?(0, 8)
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if !(position_taken?(board, index)) && on_board?(index)
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  input = input_to_index(num)
  if valid_move?(board, input)
    move(board, input, character = "X" )
  else
    turn(board)
  end
end
def turn_count(board)
  board.each do |count|
    if count == "X" || count == "O"
      count += 1
    end
  return count
end