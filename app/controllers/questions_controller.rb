class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    case
    when @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    when @question == @question.upcase
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
