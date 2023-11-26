class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params['question']
    if @answer == @answer.upcase
      @coach_message = "I can feel your motivation! " + coach_response(@answer)
    else
      @coach_message = coach_response(@answer)
    end
  end

  private
  def coach_response(answer)
    if answer.capitalize == 'I am going to work'
      @coach_message = 'Great!'
    elsif answer.last == '?'
      @coach_message = 'Silly question, get dressed and go to work!'
    else
      @coach_message = "I don't care, get dressed and go to work!"
    end
  return @coach_message
  end
end
