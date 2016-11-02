class SlangsController < ApplicationController
  def index
    @country = Country.find(params[:country_id])
    @slangs = @country.slangs
  end

  def show
    @slang = Slang.find(params[:id])
  end


  def new
    @country = Country.find(params[:country_id])
    @slang = Slang.new
  end

  def edit
    @country = Country.find(params[:country_id])
    @slang = Slang.find(params[:id])
  end

  def create
    @country = Country.find(params[:country_id])
    @slang = @country.slangs.new(slang_params)
    @slang.user_id = current_user.id
    if @slang.save
      redirect_to country_slangs_path
      else
      render 'new'
    end
  end

  def update
    @slang = Slang.find(params[:id])
    if @slang.update_attributes(slang_params)
      redirect_to country_slangs_path
      else
        render 'edit'
    end
  end

  def destroy
    @slang = Slang.find(params[:id])
    @slang.destroy
    redirect_to country_slangs_path, alert: "Deleted"
  end

  private
  def slang_params
    params.require(:slang).permit(:phrase, :translation, :example)

  end
end
