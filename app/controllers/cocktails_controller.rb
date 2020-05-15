class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :edit, :update]

  def index
    if params[:query].present?
      @cocktails = Cocktail.where('lower(name) LIKE ?', "%#{params[:query].downcase}%")
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end
  
  def create 
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.image_url == ""
      search_words = @cocktail.name.gsub(" ", ",")
      @cocktail.image_url = "https://source.unsplash.com/featured/?#{search_words}" 
    end
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'  
    end
  end

  def edit
  end

  def update
    if @cocktail.update(cocktail_params)
      if @cocktail.image_url == ""
        search_words = @cocktail.name.gsub(" ", ",")
        @cocktail.image_url = "https://source.unsplash.com/featured/?#{search_words}" 
        @cocktail.save
      end
      redirect_to cocktail_path(@cocktail)
    else
      render 'edit'
    end
  end


  private
  
  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :image_url)
  end 

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
