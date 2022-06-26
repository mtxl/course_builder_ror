# frozen_string_literal: true

class BreadcrumbComponent < ViewComponent::Base
  def initialize(course:, unit:)
    @course = course
    @unit = unit
  end
  
  # This is a stub. Takes id: of the first course from the database  
  def choice_default_course
    Course.all.each do |course|
      number = course.id
      return number
    end  
  end

  def is_course?
    if (request.fullpath.include?("courses") && 
      request.fullpath.include?("edit")) || 
      request.fullpath.include?("units")
      return true
    end
  end

  def is_unit?
    if request.fullpath.include?("units")
      return true
    end
  end   
end
