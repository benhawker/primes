require 'spec_helper'

RSpec.describe GridGenerator do
  describe "#generate" do
    let(:primes) { [2,3,5] }
    subject { described_class.new(primes: primes) }

    it "generates an array of arrays" do
      expect(subject.generate).to be_an_instance_of(Array)
      expect(subject.generate[0]).to be_an_instance_of(Array)
    end

    it "generates the correct grid" do
      expect(subject.generate).to eq [[nil, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]]
    end
  end
end