# frozen_string_literal: true

RSpec.describe PsStringEnhancer do
  it "has a version number" do
    expect(PsStringEnhancer::VERSION).not_to be nil
  end

  # it "does something useful" do
    # expect(false).to eq(true)
  # end

  describe "methods" do
    context "#word_count" do
      it "counts words in a string" do
        expect(PsStringEnhancer.word_count("Hello, World!")).to eq(2)
      end

      it "counts corectly for an empty string" do
        expect(PsStringEnhancer.word_count("")).to eq(0)
      end
    end

    context "#polindrome" do
      it "returns true for a polindrome string" do
        expect(PsStringEnhancer.polindrome?("Tenet")).to be(true)
      end

      it "returns false for a non polindrome string" do
        expect(PsStringEnhancer.polindrome?("inception")).to be(false)
      end
    end

  end
end
