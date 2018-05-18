class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  before_action :get_cocktails, only: [:index]



  def index
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
  end

  def show
  end

  def update
    @cocktail.update(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def get_cocktails
    @cocktails = Cocktail.all
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
