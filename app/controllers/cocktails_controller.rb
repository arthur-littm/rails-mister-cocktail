class CocktailsController < ApplicationController
  before_action :get_cocktail, only: [:show, :update]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :edit
    end
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  # def destroy_photo
  #   @cocktail.photo.destroy
  #   redirect_to cocktail_path(cocktail)
  # end

  private
  def get_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo, :rating)
  end

  # def cocktail_photo
  #   params.require(:cocktail).permit(:photo)
  # end
end
