class Schedule < ApplicationRecord
    belongs_to :user
    belongs_to :studio
    belongs_to :engineer
    validates :time, numericality: {greater_than: 0, less_than: 25}
end
