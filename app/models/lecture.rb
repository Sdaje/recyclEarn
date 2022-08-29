class Lecture < ApplicationRecord
  belongs_to :learning

  validates :title, presence: true
  validates :content, presence: true
end
