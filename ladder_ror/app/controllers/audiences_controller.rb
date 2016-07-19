class AudiencesController < ApplicationController
  before_filter :authenticate_user!
#  layout "special", except: [:index]
  def index
    @audiences = Audience.all
  end

  def show
    @audience = Audience.find(params[:id])
  end

  def new
#    @session[:campaign_id] ||= 1
    @audience = Audience.new
  end

  def create
    @audience = Audience.new(audience_params)
    if @audience.save

      Rails.logger.debug "current user is #{current_user}"
      current_user.audiences << @audience
      redirect_to campaigns_assets_path,  :notice => "Your audience was saved"
    else
      render "new"
    end
  end

  private
  def audience_params
    params.require(:audience).permit(:title, :description)
  end

end
