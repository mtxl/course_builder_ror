require "rails_helper"

RSpec.describe "hello spec" do
  describe "math" do
    it "should be able to perform basic math" do
      expect(6 * 7).not_to eq(43)
      expect(6 * 7).to eq(42)
    end
  end
end
