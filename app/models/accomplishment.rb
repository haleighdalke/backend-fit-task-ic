class Accomplishment < ApplicationRecord
    belongs_to :goal
    validates :date, :goal_id, :duration, :duration_type, presence: true
end
