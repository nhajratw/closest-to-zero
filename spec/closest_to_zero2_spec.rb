require 'closest_to_zero2'

describe ClosestToZeroCalc do
  let (:calc) { ClosestToZeroCalc.new }

  it "throws an error if the list is empty" do
    expect { calc.for([]) }.to raise_error(RuntimeError, /nothing in the list/)
  end

  it "returns the minimum of a list with all positive numbers" do
    calc.for([5, 10, 15]).should eq 5
  end

  it "returns the maximum of a list with all negative numbers" do
    calc.for([-4, -12, -18]).should eq -4
  end

  it "returns the closest positive number" do
    calc.for([10,-11,20,-50]).should eq 10
  end

  it "returns the closest negative number" do
    calc.for([10,-9,20,-50]).should eq -9
  end

  it "returns a single number if there are duplicates" do
    calc.for([5, 10, 15, 5]).should eq 5
  end

  it "returns multiple numbers if there are two equidistant numbers" do
    calc.for([2,4,-2]).should eq [-2,2]
  end
end
