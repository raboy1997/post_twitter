class Post < ActiveRecord::Base
  validates_uniqueness_of :post_link
end
