class Lecture < ApplicationRecord
  belongs_to :learning
  has_rich_text :content

  validates :title, presence: true
end
