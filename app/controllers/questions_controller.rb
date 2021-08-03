class QuestionsController < ApplicationController
    def ask
    end

    def answer
      if params[:ask] == "I am going to work"
        @respuesta = "Great!"
      elsif params[:ask].end_with?("?")
        @respuesta = "Silly question, get dressed and go to work!"
      else params[:ask] != ""
        @respuesta = "I don't care, get dressed and go to work!"
      end
    end
end
