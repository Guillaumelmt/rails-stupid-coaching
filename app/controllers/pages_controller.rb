class PagesController < ApplicationController

  def ask
  end

  def answer
    # Code de l'action answer pour calculer la réponse du coach
    @question = params[:question]
    @answer = coach_response(@question)
  end

  private

  def coach_response(question)
    # Logique du coach pour calculer la réponse en fonction de la question
    if question.include?("I am going to work")
      "Great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
