class User < ApplicationRecord
    has_many :schedules
    has_many :studios, through: :schedules
    has_many :engineers, through: :schedules

    validates :name, uniqueness: true, presence: true
    validates :email, presence: true
    validates :password, presence: true, length: {minimum: 6}

    has_secure_password
end
