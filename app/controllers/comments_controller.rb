class CommentsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @comment = current_user.comments.create(comment_params)
    @question.comments.push(@comment)
    current_user.comments.push(@comment)
    # binding.pry
    redirect_to question_path(@question)
  end

  def destroy
    question = Question.find(params[:question_id])
    comment = question.comments.find(params[:id])
    comment.destroy
    redirect_to question_path(question)
  end

private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :question_id)
  end
end
