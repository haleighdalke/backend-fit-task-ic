class Goal < ApplicationRecord
    belongs_to :user
    belongs_to :habit
    has_many :accomplishments
    validates :habit_id, :duration, :duration_type, :frequency, presence: true

    def habit_activity
        self.habit.activity
    end
end
