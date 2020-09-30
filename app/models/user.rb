class User < ApplicationRecord
    has_many :schedules
    has_many :studios, through: :schedules
    has_many :engineers, through: :schedules
    validates :name, :email, uniqueness: true

    has_secure_password
end
