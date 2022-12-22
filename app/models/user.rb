class User < ApplicationRecord
    has_many :bookings
    has_many :experiences, through: :bookings

    validates :username, presence: true, uniqueness: true
end