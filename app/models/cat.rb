class Cat < ApplicationRecord
  validates :name, :age, presence: true 
end
