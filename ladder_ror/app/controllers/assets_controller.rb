class AssetsController < ApplicationController
  def new
    session[:campaign_id] = params[:campaign]
  end
end
