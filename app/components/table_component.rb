class TableComponent < ViewComponent::Base
    def initialize(header:, body:, row:, footer:)
      @header = header
      @body = body
      @row = row
      @footer = footer
    end
  
  end
  
  
  