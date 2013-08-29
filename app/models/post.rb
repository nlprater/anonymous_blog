class Post < ActiveRecord::Base
  has_many :posttags
  has_many :tags through :posttags
  belongs_to :author

  validates :title, presence: true
  validates :body, presence: true
end
