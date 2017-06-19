class House < ActiveRecord::Base
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :image_attachments , dependent: :destroy
    has_one :normalinfo , dependent: :destroy
    has_one :extrainfo , dependent: :destroy
    has_one :address , dependent: :destroy
    accepts_nested_attributes_for :image_attachments, :normalinfo, :address,
                                  :extrainfo
    validates :title, presence: true
    validates :description, presence: true
end
