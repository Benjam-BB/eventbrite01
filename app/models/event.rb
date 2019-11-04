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
    has_many :attendances
    has_many :users, through: :attendances
    belongs_to :admin, class_name: "User"
end
