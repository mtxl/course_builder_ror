class CourseComponent < ViewComponent::Base
  def initialize(course:, course_counter:)
    # def initialize(course:)
    @course = course
    @course_counter = course_counter
  end

end

