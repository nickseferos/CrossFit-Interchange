class Workout < ActiveRecord::Base
  validates :stength, presence: true
  validates :conditioning, presence: true
end