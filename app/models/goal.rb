class Goal < ApplicationRecord
    belongs_to :user
    belongs_to :habit
    has_many :accomplishments

    def habit_activity
        self.habit.activity
    end
end
