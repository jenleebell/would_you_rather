class CommentsController < ApplicationController
  def create
    # binding.pry
    @question = Question.find(params[:question_id])
    @comment = current_user.comments.create(comment_params)
    @question.comments.push(@comment)
    current_user.comments.push(@comment)
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end

  def destroy
    question = Question.find(params[:question_id])
    @comment = question.comments.find(params[:id])
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
    @comment.destroy
  end

private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :question_id)
  end
end
