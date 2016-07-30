class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid? 
      @contact.subscribe
#    if @contact.save
#      redirect_to contact_path,  :notice => "Your contact information was successfully entered."
      redirect_to welcome_thanks_path,  :notice => "Your contact information was successfully entered."
    else
      render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:email, :website)
  end

end

