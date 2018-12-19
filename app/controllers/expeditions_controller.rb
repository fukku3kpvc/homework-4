class ExpeditionsController < ApplicationController
  def index
    @expedition = Expedition.all
  end

  def new
    @expedition = Expedition.new
  end

  def create
    @expedition = Expedition.new(expedition_params)

    @expedition.save

    redirect_to @expedition
  end

  def show
    @expedition = Expedition.find(params[:id])
  end

  private

  def expedition_params
    params.require(:expedition).permit(:title, :description)
  end
end
