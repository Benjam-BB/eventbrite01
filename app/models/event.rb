class Event < ApplicationRecord
    validates :start_date, presence: true
    validates :duration, presence: true
    validates :title, presence: true,
        length: { minimum: 5, maximum: 140 }
    validates :description, presence: true,
        length: { minimum: 20, maximum: 20000 }
    validates :price, presence: true,
        inclusion: { in: 1..1000 }
    validates :location, presence: true
    validate :is_multiple_5?, :is_future?
    has_many :attendances
    has_many :users, through: :attendances
    belongs_to :admin, class_name: "User"

   
  def is_future?
    errors.add(:start_date, "La date de départ ne peut être passée") unless self.start_date.to_i > Time.now.to_i
  end

  def is_multiple_5?
    errors.add(:duration, "La durée (minutes) doit être multiple de 5") unless self.duration % 5 == 0
  end
end
