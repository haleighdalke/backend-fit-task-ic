class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :location, :habits, :goals
end
