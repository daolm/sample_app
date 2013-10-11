class Relationship < ActiveRecord::Base
  # follower : nguoi theo doi minh
  # followed : nguoi minh theo doi
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
