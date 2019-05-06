class Event < ApplicationRecord
	has_many :attendances
	has_many :users, through: :attendances
	belongs_to :organizer, class_name: "User"
	validates :start_date, presence: true
	validate :is_start_date_past?
	validates :title, length: {minimum: 5, maximum: 140}, presence: true
	validates :duration,  presence: true
	validate  :is_multiple_of_5?
	validates :description, length: {in: 20..1000}, presence: true
	validates :price, length: {in: 1..1000}, presence: true
	validates :location, presence: true

	def is_start_date_past?
		if start_date < Time.now
			errors.add(:start_date, "l'évent ne peut pas se passer dans le passé")
		end
	end

	def is_multiple_of_5?
		if (duration <= 0) || (duration % 5 != 0)
			errors.add(:duration, "faut que ce soit un multiple de 5")
		end
	end
end

