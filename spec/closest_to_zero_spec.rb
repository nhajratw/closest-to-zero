require_relative '../lib/closest_to_zero'

describe ClosestToZeroCalculator do
  let (:calc) { calc = ClosestToZeroCalculator.new }

  it "returns zero for an empty list" do
    closest = calc.closest([])
    closest.should be_nil 
  end

  it "returns the min when positive integers" do
    closest = calc.closest([2, 4, 6, 8])
    closest.should == 2
  end

  it "returns the max when negative integers" do
    closest = calc.closest([-2, -4, -6, -8])
    closest.should == -2
  end

  it "returns the closest positive" do
    closest = calc.closest([-2, 1, -6, -8])
    closest.should == 1
  end

  it "returns the closest negative" do
    closest = calc.closest([-2, 3, -6, -8])
    closest.should == -2
  end
end
