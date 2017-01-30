class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    computer_moveset = ["rock", "paper", "scissors"]
    computer_move = computer_moveset.sample


    if computer_move == @user_move
      result = "Tie"
    else

      if computer_move == "rock"
        if @user_move == "scissors"
          result = "Computer Wins"
        else
          result = "You Win"
        end
      end

      if computer_move == "scissors"
        if @user_move == "paper"
          result = "Computer Wins"
        else
          result = "You Win"
        end
      end

      if computer_move == "paper"
        if @user_move == "rock"
          result = "Computer Wins"
        else
          result = "You Win"
        end
      end
    end
    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = computer_move

    @result = result

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
