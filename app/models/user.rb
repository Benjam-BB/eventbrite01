class User < ApplicationRecord
    validates :email, 
		presence: true, 
		uniqueness: true,
		format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    has_many :attendances
    has_many :events, through: :attendances
    has_many :events, foreign_key: 'admin_id', class_name: "Event"
end
