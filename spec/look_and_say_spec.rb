require "spec_helper"

describe LookAndSay do
  it "has a version number" do
    expect(LookAndSay::VERSION).not_to be nil
  end

  context "test values" do
    it "return correct value with seed = 1" do
      expect(
          1.look_and_say.each.take(5)
      ).to eq([1, 11, 21, 1211, 111221])
    end
    it "return correct value with seed = 10" do
      expect(
          10.look_and_say.each.take(3)
      ).to eq([10, 1110, 3110])
    end
  end
  
  context "errors" do
    it "throws error when bad seed" do
      expect {
          -10.look_and_say.each.take(3)
      }.to raise_error(LookAndSay::InvalidSeedError)
    end
  end
  
  
end
