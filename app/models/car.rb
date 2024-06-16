class Car < ApplicationRecord
  has_many :users, through: :garages
  has_many :garages
end
