class FormsController < ApplicationController
  def index
    @forms = Form.all
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @forum.save
      
    else
      
    end
  end

  private
  def form_params
    params.require(:form).permit()
  end
end
