class Attendance < ApplicationRecord
    belongs_to :user
    belongs_to :event

    after_create :event_send

    def event_send
        UserMailer.welcome_event(self).deliver_now
    end

end
