class Blog < ActiveRecord::Base
  mount_uploader :image, BlogImageUploader
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  validates :body, presence: true
  validates :image, presence: true
end