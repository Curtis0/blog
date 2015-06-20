module ApplicationHelper
  def find_category_title(category_id)
    category = Category.find(category_id)
    category.title
  end
end
# This method can only be used in the view folder/files.
# This method is used in the "show.html.erb" in the Category section.
