# frozen_string_literal: true

RSpec.describe MegaLotto do
  it "has a version number" do
    expect(MegaLotto::VERSION).not_to be nil
  end

  describe "#draw" do
    let(:drawing) { MegaLotto::Drawing.new.draw }
    it "returns an array" do
      expect(drawing).to be_a(Array)
    end

    it "returns an array with 5 elements" do
      expect(drawing.size).to eq(5)
    end

    it "each element is an integer" do
      drawing.each do |item|
        expect(item).to be_a(Integer)
      end
    end

    it "each element is 0 < 100" do
      drawing.each do |item|
        expect(item).to be > 0
        expect(item).to be < 100
      end
    end
  end
end
