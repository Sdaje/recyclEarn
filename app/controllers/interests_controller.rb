class InterestsController < ApplicationController
  def index
    @interests = Interest.all
    # modele search avec paramètres de recherche (catégory), #validate_categories renvoit le tableau de catégorie recherché
    # créer le modele search avec les catgeories commes variables
    # revoyer ces catégories dans le formulaire comme bouton avec simple form @search et url: interests_path(<= renvoit vers interest mais est lié à @search)
    # Dans le controleur interest, inité un where interest avec les catégories coché du @search via une méthode #validate_categories
    if search_params
      @search = Search.new(search_params)
    else
      # initialization d'un search vide pour le formulaire
      @search = Search.new
    end
    @interests = @interests.where(category: @search.validate_categories)
    # fin de recherche
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

  def search
  end

  private

  def search_params
  end
end
