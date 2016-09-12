class Workout < ActiveRecord::Base
  validates :strength, presence: true
  validates :conditioning, presence: true
  validates :date, presence: true

  has_many :movements
  belongs_to :user
end