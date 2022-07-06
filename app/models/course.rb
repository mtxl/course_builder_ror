class Course < ApplicationRecord
  validates_presence_of :title, :volume, :price
  scope :active, ->() { where(active: true) }
  scope :inactive, ->() { where(active: false) }

  has_and_belongs_to_many :units, :join_table => :units_courses

end
