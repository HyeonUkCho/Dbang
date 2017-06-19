class Comment < ActiveRecord::Base
  belongs_to :house
  belongs_to :user
  validates :commenter, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
end
