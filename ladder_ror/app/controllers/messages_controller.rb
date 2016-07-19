class MessagesController < ApplicationController
  before_filter :authenticate_user!
#  layout "special", except: [:index]
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
#    @session[:campaign_id] ||= 1
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save

      Rails.logger.debug "current user is #{current_user}"
      current_user.messages << @message
      redirect_to campaigns_assets_path,  :notice => "Your message was saved"
    else
      render "new"
    end
  end

  private
  def message_params
    params.require(:message).permit(:msg)
  end

end

