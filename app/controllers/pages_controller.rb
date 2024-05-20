class PagesController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]

    # Simple logic to generate an answer based on the question
    @answer = case @question.downcase
              when "i am going to work"
                "Great!"
              when "what time is it?"
                "It's #{Time.now.strftime('%I:%M %p')}."
              else
                "I don't care, get dressed and go to work!"
              end

    render :answer
  end
end
