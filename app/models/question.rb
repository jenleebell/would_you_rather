class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  has_many :comments
end
