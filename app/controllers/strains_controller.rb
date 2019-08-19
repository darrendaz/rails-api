class StrainsController < ApplicationController
  def index
    @strains = Strain.all
    render json: @strains
  end

  def show
    @strain = Strain.find_by(id: params[:id])
  end

  def create
    @strain = Strain.new(strain_params)
  end

  private
  def strain_params
    params.require(:strain).permit(:name)
  end
end
