class ContactsController < ApplicationController
    def new #hier maken we een html van in view
        @contact = Contact.new
    end
    
    # in het formulier staat action="/contacts" 
    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            flash[:success] = "Message is send."
            redirect_to new_contact_path
        else
            flash[:danger] = "Error all fields are mandatory!"
            redirect_to new_contact_path
        end
    end
    
    private #als veiligheidsmaatregel moet dit
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
    
end
