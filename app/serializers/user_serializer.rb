class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :location, :habit, :goal, :accomplishment
end
