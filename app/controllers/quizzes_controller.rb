class QuizzesController < ApplicationController
	def index
    @quiz = Quiz.order("RANDOM()").first
	end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create(quiz_params)
    if @quiz.invalid?
      flash[:error] = '<strong>Could not save,</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:photo, :name, :ingredients, :preparations, :link)
  end
end

