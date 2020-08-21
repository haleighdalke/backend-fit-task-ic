class Habit < ApplicationRecord
    has_many :goals
    has_many :users, through: :goals
    validates :activity, :activity_type, presence: true
end
