class Comment < ActiveRecord::Base
  attr_accessible :body, :post, :post_body
  belongs_to :post
  has_many :replies
end
