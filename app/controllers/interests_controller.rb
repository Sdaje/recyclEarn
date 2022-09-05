class InterestsController < ApplicationController
  def index
    @interests = Interest.all

    @interests = @interests.where(category: params[:search][:query]) if params[:search]

    @markers = @interests.geocoded.map do |interest|
      case interest.category
      when "composter" then color = "#03CEA4"
      when "recycling_center" then color = "#D5573B"
      when "glass_container" then color = "#6369D1"
      end
      info_window_html = "<h3>#{interest.category.capitalize.gsub('_', ' ')}</h3>
                      <p>#{interest.address}</p>
                      #{interest.website.nil? ? '' : "<a href='#{interest.website}'>Web site</a>"}"
      {
        lat: interest.latitude,
        lng: interest.longitude,
        color: color,
        info_window: info_window_html
      }
    end

    respond_to do |format|
      format.html
      format.text { render partial: "interests/map", locals: { markers: @markers }, formats: [:html] }
    end
  end
end
