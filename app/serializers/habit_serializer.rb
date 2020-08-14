class HabitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :activity, :activity_type, :goals, :users
end
