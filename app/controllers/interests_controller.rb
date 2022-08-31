class InterestsController < ApplicationController
  def index
    @interests = Interest.all

    @interests = @interests.where(category: params[:search][:query]) if params[:search]

    @markers = @interests.geocoded.map do |interest|
      case interest.category
      when "composter" then color = "#478978"
      when "recycling_center" then color = "#FFBF00"
      when "glass_container" then color = "#2274A5"
      end
      {
        lat: interest.latitude,
        lng: interest.longitude,
        color: color,
        info_window: render_to_string(partial: "info_window", locals: { interest: interest })
      }
    end
  end
end
