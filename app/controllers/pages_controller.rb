class PagesController < ApplicationController
  
  def ask
  end

  def answer
    @question = params[:question]

    # Simple logic to generate an answer based on the question
    @answer = case @question.downcase
              when "hello"
                "Hi there!"
              when "what time is it?"
                "It's #{Time.now.strftime('%I:%M %p')}."
              else
                "I don't understand the question."
              end

    render :answer
  end
end
