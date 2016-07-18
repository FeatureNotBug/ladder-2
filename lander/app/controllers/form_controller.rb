class FormController < ApplicationController
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
end
