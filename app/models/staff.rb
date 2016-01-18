class Staff < ActiveRecord::Base
  # params.require(:staff).permit(:name, :image, :bio)
  mount_uploader :image, StaffAvatarUploader
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
  validates :bio, presence: true, length: { minimum: 50 }
end