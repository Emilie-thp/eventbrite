class Attendance < ApplicationRecord


	belongs_to :user
	belongs_to :event
	
	def inscription_event_send
		UserMailer.inscription_event(self).deliver_now
  end

end
