class AccomplishmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :duration, :duration_type, :goal, :goal_id
end
