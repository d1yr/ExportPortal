class Schedule < ApplicationRecord
    belongs_to :user
    belongs_to :studio
    belongs_to :engineer
end
