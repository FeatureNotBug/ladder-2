class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_campaign_id
  def set_campaign_id
    session[:campaign_id] ||= 1
  end

  def view_campaign
    Campaign.find(session[:campaign_id]) if session[:campaign_id].present?
  end

#  def current_campaign
#    @_current_campaign ||= session[:current_campaign_id] && Campaign.find_by(id: session[:current_campaign_id])
#  end
end
