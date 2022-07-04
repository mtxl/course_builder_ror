module BreadcrumbsHelper

  def set_default_course
    Course.first.id
  end
end
