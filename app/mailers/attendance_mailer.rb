class AttendanceMailer < ApplicationMailer
	defaut from: 'no-reply@monsite.fr'

	def participation_email(user, event)
		@user = user
		@event = event

		@url = 'https://lyon-event-jah.herokuapp.com/' 

		mail(to: @user.email, subject: 'Cool bro tu participes à #{@event.title} !')
	end
end