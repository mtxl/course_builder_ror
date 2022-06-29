# frozen_string_literal: true

class CourseComponent < ViewComponent::Base
  def initialize(course:)
    @course = course
  end

end
