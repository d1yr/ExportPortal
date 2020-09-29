class User < ApplicationRecord
    has_many :schedules
    has_many :studios, through: :schedules
    has_many :engineers, through: :schedules

    has_secure_password
end
