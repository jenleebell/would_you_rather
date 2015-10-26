class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
# binding.pry
    @question = Question.new(content: params[:content])
    @question.answers.new(content: params[:answer_1])
    @question.answers.new(content: params[:answer_2])
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

private
  def question_params
    params.require(:question).permit(:content)
  end
end
