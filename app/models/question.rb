class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  has_many :comments
  belongs_to :user
end
