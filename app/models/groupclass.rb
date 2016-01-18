class Groupclass < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :length, presence: true
  validates :description, presence: true
end