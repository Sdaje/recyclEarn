class Answer < ApplicationRecord
  belongs_to :option
  belongs_to :question
  belongs_to :user

  validates :option, presence: true
end
