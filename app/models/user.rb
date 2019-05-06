class User < ApplicationRecord
	after_create :welcome_send

	has_many :attendances
	has_many :events, through: :attendances
	has_many :attendees, foreign_key: "attendee_id", class_name: "Event"
	has_many :organizers, foreign_key: "organizer_id", class_name: "Event"

	
	def welcome_send
		UserMailer.welcome_email(self).deliver_now
	end
end
