require "spec_helper"
RSpec.describe MegaLotto::Configuration do
  let(:config) { MegaLotto::Configuration.new }
  describe "#drawing_count" do
    it "sets default value to 5" do
      expect(config.drawing_count).to eq(5)
    end
  end

  describe "#drawing_count=" do
    it "can set a value" do
      config.drawing_count = 2
      expect(config.drawing_count).to eq(2)
    end
  end
end
