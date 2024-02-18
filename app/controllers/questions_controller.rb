
# rails generate controller Questions

class QuestionsController < ApplicationController
  def ask # je créé une méthode ask pour la page d'accueil
  end

  def answer # je créé une méthode answer
    @question = params[:question] # je récupère la question de l'utilisateur
    case # je créé un case pour les différentes réponses
      # attention à l'ordre des conditions qui doit être respecté
    when @question.include?('?') # je vérifie si la question contient un point d'interrogation
      @answer = 'Silly question, get dressed and go to work!'
    when @question == @question.upcase
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
