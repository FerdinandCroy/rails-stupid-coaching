class QuestionsController < ApplicationController
  def ask
    @ask = params[:question]
  end

  def answer
    if params[:question].blank?
    @answer = "Please type something correct"
    elsif params[:question].include? "?"
      @answer = "Silly question get back to work"
    elsif params[:question] == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care get dressed and go to work!"
    end
  end
end
