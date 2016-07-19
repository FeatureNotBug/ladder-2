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
    if @form.save
      redirect_to welcome_result_path
    else
      
    end
  end

  private
  def form_params
    params.require(:form).permit(types:[], msgs:[], targets:[])
  end
end
