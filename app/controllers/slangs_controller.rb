class SlangsController < ApplicationController
  def index
    @slangs = Slang.all
  end

  def show
    @slang = Slang.find(params[:id])
  end


  def new
    @slang = Slang.new
  end

  def edit
    @slang = Slang.find(params[:id])
  end

  def create
    @slang = Slang.new(params)
    if @slang.save
      redirect_to country_slangs_path
    else
      render 'new'
    end
  end

  def update
    @slang = Slang.find(params[:id])
    if @slang.update_attributes(params)
      else
        render 'edit'
    end
  end

  def destroy
    @slang = Slang.find(params[:id])
    @slang.destroy
    redirect_to country_slangs_path
  end

  private
  def params
    params.require(:slangs).permit(:phrase, :translation, :example)

  end
end
