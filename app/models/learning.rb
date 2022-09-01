class Learning < ApplicationRecord
  has_many :rewards, dependent: :destroy
  has_many :lectures, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions, dependent: :destroy

  validates :title, presence: true
  validates :topic, presence: true
  validates :city, presence: true
  validates :penality, presence: true
  validates :difficulty, presence: true

  enum difficulty: { easy: 1, medium: 2, hard: 3, impossible: 4 }

  def next_question(current_question)
    questions.where('id > ?', current_question.id).first
  end
end
