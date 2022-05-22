class Course < ApplicationRecord
  validates_presence_of :title, :volume, :price
  scope :active, ->() { where(active: true) }
  scope :inactive, ->() { where(active: false) }
end
