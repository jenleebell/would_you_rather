class QuestionsController < ApplicationController
  def index
    @question = Question.all.sample
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

  def update
    @question = Question.find(params[:id])
    answer_1 = @question.answers.first
    answer_2 = @question.answers.last
    if params[:vote_1]
      new_vote_1 = answer_1.votes + 1
      answer_1.update(votes: new_vote_1)
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    elsif params[:vote_2]
      new_vote_2 = answer_2.votes + 1
      answer_2.update(votes: new_vote_2)
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    end
  end

private
  def question_params
    params.require(:question).permit(:content)
  end
end
