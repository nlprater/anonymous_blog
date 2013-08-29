class Tag < ActiveRecord::Base
  has_many :posttags
  has_many :posts, :through => :posttags

  validates :description, presence: true, uniqueness: true
end
