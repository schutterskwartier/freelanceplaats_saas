class ContactMailer < ActionMailer::base
    default to: 'dennis@schutterskwartier.nl'

    def cantact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact formulier van FreelancePlaats')
    end
    
end