class StrainsController < ApplicationController
  def index
    @strains = Strain.all
    render json: @strains
  end

  def show
    @strain = Strain.find_by(id: params[:id])
    render json: @strain
  end

  def create
    @strain = Strain.create(strain_params)
    render json: @strain
  end

  private
  def strain_params
    params.require(:strain).permit(:name)
  end
end
