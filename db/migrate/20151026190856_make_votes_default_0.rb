class MakeVotesDefault0 < ActiveRecord::Migration
  def change
    change_column_default :answers, :votes, 0
  end
end
