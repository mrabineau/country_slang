class SlangsController < ApplicationController
  def index
    @slangs = Slang.all
  end

  def create
    @slang = Slang.new(params)
    if @slang.save
      redirect_to country_slangs_path

    end
  end

  def new
    @slang = Slang.new
  end

  def edit

  end

  def show
    @slang = Slang.find(params[:id])
  end

  def update

  end

  def destroy

  end

  def params
    params.require(:slangs).permit(:phrase, :translation, :example)

  end
end
