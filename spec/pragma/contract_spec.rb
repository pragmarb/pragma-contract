require "spec_helper"

describe Pragma::Contract do
  it "has a version number" do
    expect(Pragma::Contract::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
