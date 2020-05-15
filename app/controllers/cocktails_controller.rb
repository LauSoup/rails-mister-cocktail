class CocktailsController < ApplicationController

  def index
    if params[:query].present?
      @cocktails = Cocktail.where('lower(name) LIKE ?', "%#{params[:query].downcase}%")
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end
  
  def create 
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.image_url = "https://source.unsplash.com/featured/?#{@cocktail.name}" if @cocktail.image_url == ""
  
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update(cocktail_params)
      @cocktail.image_url = "https://source.unsplash.com/featured/?#{@cocktail.name}" if @cocktail.image_url == ""
      @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'edit'
    end
  end


  private
  
  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :image_url)
  end 

end
