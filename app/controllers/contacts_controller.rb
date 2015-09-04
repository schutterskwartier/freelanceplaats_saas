class ContactsController < ApplicationController
    def new #hier maken we een html van in view
        @contact = Contact.new
    end
    
    def create
    end
end
