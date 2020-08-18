class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :age, :location, :habits, :goals
end
