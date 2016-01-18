class Workout < ActiveRecord::Base
  validates :strength, presence: true
  validates :conditioning, presence: true
end