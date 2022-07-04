class CourseComponent < ViewComponent::Base
  def initialize(course:)
    @course = course
  end
end

