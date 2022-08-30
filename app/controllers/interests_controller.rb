class InterestsController < ApplicationController
  def index
    @interests = Interest.all
    @markers = @interests.geocoded.map do |interest|
      case interest.category
      when "composter" then image = "compost.png"
      end
      {
        lat: interest.latitude,
        lng: interest.longitude,
        image_url: helpers.asset_url(image)
      }
    end
  end

  def search
  end
end
