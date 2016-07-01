class CampaignsController < ApplicationController
  layout "special", except: [:index]
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaigns = Campaign.find(params[:id])
  end

  def new
  end
end
