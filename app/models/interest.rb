class Interest < ApplicationRecord
  validates :address, presence: true
  validates :website, presence: true
  validates :category, presence: true

  enum category: {}
end
