class Reward < ApplicationRecord
  belongs_to :user
  has_many :learnings, dependent: :destroy

  validates :validate, presence: true
end
