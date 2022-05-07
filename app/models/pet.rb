class Pet < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :breed, presence: true
  validates :age, presence: true 
end
