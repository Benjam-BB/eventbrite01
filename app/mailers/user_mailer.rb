class UserMailer < ApplicationMailer
    default from: 'no-reply@eventbrite01.fr'

    def welcome_email(user)
        #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        @user = user 
    
        #on définit une variable @url qu'on utilisera dans la view d’e-mail
        @url  = 'http://monsite.fr/login' 
    
        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: @user.email, subject: 'Bienvenue sur eventbrite01 !') 
      end

    def welcome_event(attendance)
        #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        @attendance = attendance
    
        #on définit une variable @url qu'on utilisera dans la view d’e-mail
        @url  = 'http://monsite.fr/login' 
    
        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: User.find(@attendance.user_id).email, subject: 'Tu es bien inscrit à ton évènement sur eventbrite01 !') 
    end
end
