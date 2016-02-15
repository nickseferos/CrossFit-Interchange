class Blog < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  validates :body, presence: true
end