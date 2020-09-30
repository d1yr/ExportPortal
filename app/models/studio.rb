class Studio < ApplicationRecord
    has_many :schedules
    has_many :users, through: :schedules
    has_many :engineers, through: :schedules
    validates :name, uniqueness: true
end
