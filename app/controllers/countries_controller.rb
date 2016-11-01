class CountriesController < ApplicationController
    def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end


  def new
    @country = Country.new
  end

  def edit
    @country = Country.find(params[:id])
  end

  def create
    @country = Country.new(params)
    if @country.save
      redirect_to country_slangs_path
    else
      render 'new'
    end
  end

  def update
    @country = Country.find(params[:id])
    if @country.update_attributes(params)
      else
        render 'edit'
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to country_slangs_path
  end

  private
  def params
    params.require(:countries).permit(:name, :gov_type, :population, :capitol)

  end
end


