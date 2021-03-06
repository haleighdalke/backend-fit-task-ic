class User < ApplicationRecord
    has_many :goals
    has_many :habits, through: :goals
    has_many :accomplishments, through: :goals
    has_secure_password
    has_secure_password :recovery_password, validations: false
    validates :name, uniqueness: true
    validates :name, :age, :location, presence: true
end
