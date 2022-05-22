class Unit < ApplicationRecord
  has_and_belongs_to_many :courses, :join_table => :units_courses

end
