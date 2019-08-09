class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
     if @dose.save
       redirect_to cocktail_path(@dose.cocktail)
     else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    d = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(d)
  end

private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :amount, :description)
  end
end
