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
    @cocktail = Cocktail.create(params[])
  end

  def update
    @cocktail.save
  end

  private
  def get_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
