class Engineer < ApplicationRecord
    has_many :schedules
    has_many :studios, through: :schedules
    has_many :users, through: :schedules
    validates :name, uniqueness: true
end
