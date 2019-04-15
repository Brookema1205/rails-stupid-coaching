class QuestionsController < ApplicationController
  def answer
    @questions = params[:questions]
    if @questions.casecmp('I am going to work!').zero?
      @answer = ''
    elsif @questions.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end
