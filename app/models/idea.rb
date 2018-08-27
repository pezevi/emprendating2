class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user
  has_many :idea_likes, dependent: :destroy
end
