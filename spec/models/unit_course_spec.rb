require 'rails_helper'

RSpec.describe UnitCourse, type: :model do
  fixtures :all

  context "relations is work" do
    it 'first course has first unit' do
      expect(Course.find(1).units.count).to eq(1)
    end

    it 'second course has first & second unit' do
      expect(Course.find(2).units.count).to eq(2)
    end
  end
end
