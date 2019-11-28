class UserMailer < ApplicationMailer
	default from: 'no-reply@cutekitty.com'
	
	def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 
		#on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://cutekitty.com' 
		# c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
	
	
  def after_order(confirm)


    @order = confirm.order
    @user = confirm.order.user
    @user = User.find(@user.id)
  	mail(to: @user.email, subject: 'Validation de votre commande')
  	
  end
	
	def admin_alert(confirm)
  	@order = confirm.order
  	@user = confirm.order.user
  	mail(to: "cutekitty@yopmail.com", subject: 'Une commande a été enregistrée')
  end
	
end
