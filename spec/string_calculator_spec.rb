require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given single number" do
      it "returns same number" do
        expect(StringCalculator.add("5")).to eq(5)
      end
    end

    context "given multiple numbers" do
      it "returns sum of given numbers" do
        expect(StringCalculator.add("5,6,2")).to eq(13)
      end
    end
  end
end
