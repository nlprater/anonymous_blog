class Post < ActiveRecord::Base
  has_many :posttags
  has_many :tags, :through => :posttags
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
end
