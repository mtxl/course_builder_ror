# frozen_string_literal: true

class BreadcrumbComponent < ViewComponent::Base

  def initialize(current_course:, breadcrumb:, breadcrumbs:)
    @current_course = current_course
    @breadcrumb = breadcrumb
    @breadcrumbs = build_list(@breadcrumb)
  end

  def build_list(breadcrumb)
    if breadcrumb.nil?
      { "Курсы": "/" }
    elsif breadcrumb.include?("new")
      { "Курсы": "/", "Новый Курс": "/courses/new" }
    elsif breadcrumb.include?("courses") && breadcrumb.include?("edit")
      { "Курсы": "/", "Курс": "" }
    elsif breadcrumb.include?("units")
      { "Курсы": "/", "Курс": "/courses/#{@current_course}/edit", "Модуль": "" }
    else
      { "Курсы": "/" }
    end
  end
end
