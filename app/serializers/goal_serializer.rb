class GoalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :frequency, :duration, :duration_type, :accomplishments, :user, :habit
end
