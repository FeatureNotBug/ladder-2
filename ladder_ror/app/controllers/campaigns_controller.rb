class CampaignsController < ApplicationController
  layout "special", except: [:index]
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
#    @session[:campaign_id] ||= 1
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    if @campaign.save
      redirect_to root_path,  :notice => "Your campaign was saved"
    else
      render "new"
    end
  end

  private
  def campaign_params
    params.require(:campaign).permit(:name)
  end

end
