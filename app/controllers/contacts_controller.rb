class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path, notice: "Contact saved with success!"
    else
      render :new, error: "Something went wrong, please try again."
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :description, :email, :job_title)
  end
end
