class Answer < ActiveRecord::Base
  belongs_to :question

  def percentage
    question = self.question
    total_votes = question.answers.first.votes + question.answers.last.votes
    votes = self.votes
    return ((votes.to_f/total_votes.to_f) * 100).round
  end
end
