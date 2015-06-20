class Post < ActiveRecord::Base
  belongs_to :categories
  paginates_per 2

  def pub_date
    created_at.strftime('%Y/%m/%d %H:%M')
  end
end
