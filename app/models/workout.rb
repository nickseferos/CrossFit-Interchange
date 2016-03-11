class Workout < ActiveRecord::Base
  validates :strength, presence: true
  validates :conditioning, presence: true
  validates :date, presence: true
end