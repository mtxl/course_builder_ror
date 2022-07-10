# frozen_string_literal: true

require "rails_helper"

RSpec.describe BreadcrumbComponent, type: :component do

  it "renders breadcrumb menu" do
    expect(
      render_inline(BreadcrumbComponent.new(current_course: @current_course, breadcrumb: @breadcrumb, breadcrumbs: @breadcrumbs)) { "Курсы" }.css("nav").to_html
    ).to include(
      "Курсы"
    )
  end

   it "renders content" do
    test_text = "Курсы"
    render_inline(BreadcrumbComponent.new(current_course: @current_course, breadcrumb: @breadcrumb, breadcrumbs: @breadcrumbs).with_content(test_text))

    expect(page).to have_text(test_text)
  end
end
