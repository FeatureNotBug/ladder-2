class CreativesController < ApplicationController
  def index
    @creatives = Creative.all
  end

  def new
    @creative = Creative.new
  end

  def create
    @creative = Creative.new(creative_params)
    if @creative.save
      redirect_to creatives_path, notice: "The creative #{@creative.name} has been saved"
    else
      render "new"
    end
  end

  def destroy
    @creative = Creative.find(params[:id])
    @creative.destroy
    redirect_to creatives_path, notice: "The creative #{@creative.name} has been destroyed"
  end

  private
  def creative_params
    params.require(:creative).permit(:name, :attachment)
  end
end
