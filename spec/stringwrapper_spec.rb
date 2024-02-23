require 'rspec'
require_relative 'stringwrapper'
RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        string = "Yellow"
        wrapper = StringWrapper.new(string)
        expect(wrapper.reverse).to eq("wolleY")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        string = "Yellow"
        wrapper = StringWrapper.new(string)
        expect(wrapper.upcase).to eq("YELLOW")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        string = "YELLOW"
        wrapper = StringWrapper.new(string)
        expect(wrapper.downcase).to eq("yellow")
      end
    end
end
  