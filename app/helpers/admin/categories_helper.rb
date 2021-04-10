module Admin::CategoriesHelper
  def admin_nested_categories(categories)
      categories.map do |category, sub_categories|
          render(category) + content_tag(:li, admin_nested_categories(sub_categories), :class => "nested_categories")
      end.join.html_safe
  end
end
