require 'spec_helper'

RSpec.describe PrimeGenerator do
  describe "#generate" do
    context "when no limit is passed" do
      it "generates 10 primes" do
        expect(described_class.new.generate.size).to eq 10
      end

      it "generates the correct primes" do
        expect(described_class.new.generate).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      end
    end

    context "when a limit is passed" do
      let(:limit) { 5 }
      subject { described_class.new(limit: limit) }

      it "generates 5 primes" do
        expect(subject.generate.size).to eq 5 
      end

      it "generates the correct primes" do
        expect(subject.generate).to eq [2, 3, 5, 7, 11]
      end
    end
  end
end