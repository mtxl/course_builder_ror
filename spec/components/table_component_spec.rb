require "rails_helper"

RSpec.describe TableComponent, type: :component do

  it "renders TableComponent" do

    render_inline TableComponent.new

      expect(TableComponent.collection_parameter).to eq(:table)
      expect(TableComponent.registered_slots[:rows][:collection]).to eq(true)

      expect(
             render_inline(TableComponent.new).css('table').to_html
            ).to include('<table>')
      
    end
end