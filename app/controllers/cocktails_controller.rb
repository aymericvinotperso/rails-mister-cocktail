class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    params[:cocktail_id].nil? ? @cocktail = Cocktail.find(params[:id]) : @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @dose.cocktail = @cocktail
    @cocktail.save!
  end

  def new
    @cocktail = Cocktail.new
    @dose = Dose.new
    @ingredient = Ingredient.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.delete
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
