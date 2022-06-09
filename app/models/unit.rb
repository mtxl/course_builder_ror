class Unit < ApplicationRecord
  validates_presence_of :title, :body
  has_and_belongs_to_many :courses, :join_table => :units_courses

end
