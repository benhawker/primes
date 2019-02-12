require 'spec_helper'

RSpec.describe GridFormatter do
  let(:grid) { [[nil, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]] }
  subject { described_class.new(grid: grid) }

  describe "#format" do
    it "prints the formatted grid" do
      grid_output = "   | 2  3  5  \n- - - - - - - - \n2  | 4  6  10 \n3  | 6  9  15 \n5  | 10 15 25 \n"
      expect { subject.format }.to output(grid_output).to_stdout
    end
  end
end