class Question < ApplicationRecord
  belongs_to :learning
  has_many :options, dependent: :destroy
  has_many :answers, dependent: :destroy

  validates :content, presence: true

  def questions_left
    learning.questions.where('id > ?', id).count
  end
end
