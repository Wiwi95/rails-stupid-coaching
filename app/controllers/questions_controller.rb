class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @asks = ["I'm going to work!", "can i go shopping?"]
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    @answer = ""
      if params[:ans] == @asks[0]
        @answer = @answers[0]
      elsif params[:ans].include? '?'
        @answer = @answers[1]
      else
        @answer =  @answers[-1]
      end
  end
end
