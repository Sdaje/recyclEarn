class Interest < ApplicationRecord
  geocoded_by :address
  after_validation :geocode if :longitude.nil? || :latitude.nil?

  validates :address, presence: true
  validates :category, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true

  enum category: { composter: 1 }
end
