def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]


def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, token)
  
end

def position_taken(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def valid_move?(board, index)
  if !position_taken(board, index)
    true
  else 
    false
  end
end

def turn(board)

end

def turn_count(board)
  count = 0 
  board.each do |board_index| 
    if board_index == "X" || board_index == "O"
      count = count + 1
    end
  end
  count
end

def current_player(board)
  if turn_count(board) % 2 == 0
    "X"
  else
    "O"
  end
end

def won?(board)
  WIN_COMBINATIONS.each do |comb|
    index_1 = comb[0]
    index_2 = comb[1]
    index_3 = comb[2]
    if board[index_1] == "X" && board[index_2] == "X" && board[index_3] == "X" 
      return comb
    elsif board[index_1] == "O" && board[index_2] == "O" && board[index_3] == "O"
      return comb
    end
  end
  false
end

def full?(board)
  if turn_count(board) == 9
    true
  else
    false
  end
end

def draw?(board)
  if won?(board) && full?(board)
    false
  elsif full?(board) && !won?(board)
    true
  elsif !full?(board)
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)

  if won?(board)
    comb = won?(board)
    return board[comb[0]]
  else
    nil
  end
end

def play
end



