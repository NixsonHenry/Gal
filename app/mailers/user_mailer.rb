class UserMailer < ApplicationMailer
    def confirm(user)
        @user = user

        mail(to: user.email, subject: 'Votre incription sur le Site GAL   ' + Rails.application.config.site[:name])

    end
    
    def password(user)
        @user = user
        mail(to: user.email, subject: 'Réinitialisation de votre mot de passe' + Rails.application.config.site[:name])

    end 
end
