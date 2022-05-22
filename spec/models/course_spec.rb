require 'rails_helper'

RSpec.describe Course, type: :model do
  context "validations tests" do
    it "ensures the title & price is present" do
      course = Course.new(volume: "Content of the volume")
      expect(course.valid?).to eq(false)
    end

    it "ensures the volume & price is present" do
      course = Course.new(title: "Title")
      expect(course.valid?).to eq(false)
    end

    it "ensures the volume & title is present" do
      course = Course.new(price: "Title")
      expect(course.valid?).to eq(false)
    end

    it "ensures the course is active by default" do
      course = Course.new(volume: "Content of the volume", title: "Title", price: 300)
      expect(course.active?).to eq(true)
    end

    it "should be able to save course" do
      course = Course.new(volume: "Content of the volume", title: "Title", price: 300)
      expect(course.save).to eq(true)
    end
  end

  context "scopes tests" do
    let(:params) { {      volume: "Content of the volume",      title: "Title",      price: 300,      active: true    } }
    before(:each) do
      Course.create(params)
      Course.create(params)
      Course.create(params)
      Course.create(params.merge(active: false))
      Course.create(params.merge(active: false))
    end

    it "should return all active articles" do
      expect(Course.active.count).to eq(3)
    end

    it "should return all inactive articles" do
      expect(Course.inactive.count).to eq(2)
    end
  end
end
