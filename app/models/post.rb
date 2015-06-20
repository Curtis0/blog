class Post < ActiveRecord::Base
  belongs_to :categories
  paginates_per 2
end
