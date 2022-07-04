# frozen_string_literal: true

class BreadcrumbComponent < ViewComponent::Base
  include BreadcrumbsHelper

  def initialize(breadcrumb:, breadcrumbs:)
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
      { "Курсы": "/", "Курс": "/courses/#{set_default_course}/edit", "Модуль": "" }
    else
      { "Курсы": "/" }
    end
  end
end
