class TableComponent < ViewComponent::Base
  renders_many :rows, ->(object, component_class, **params) { component_class.new(object, **params) }
  
  def column_names
    Course.new.attributes.keys
  end
  
end