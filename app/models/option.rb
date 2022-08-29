class Option < ApplicationRecord
  belongs_to :question
  has_many :answers, dependent: :destroy

  validates :content, presence: true
  validates :good, presence: true
end
