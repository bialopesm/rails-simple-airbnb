class FlatsController < ApplicationController
  def index
    if params[:search].present? && params[:search][:query].present?
      query = params[:search][:query].downcase
      @flats = Flat.where("LOWER(name) LIKE ?", "%#{query}%")
    else
      @flats = Flat.all
    end
  end


  def show
    @flat= Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save

    redirect_to flats_path(@flat)
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
