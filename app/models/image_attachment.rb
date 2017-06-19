class ImageAttachment < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    belongs_to :house
    validates :avatar, presence: true
end
