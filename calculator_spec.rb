require 'spec_helper'

class Calculator
  def add num_one, num_two
    num_one +  num_two
  end

  def mult num_one, num_two
    num_one *  num_two
  end
end

describe Calculator do

  describe "#add" do
    context "with correct params" do
      it "should add two numbers" do
        calc = Calculator.new
        expect(calc.add(1,3)).to eql(43)
      end
    end

    context "with incorrect params" do
      it "should throw an error" do
         calc = Calculator.new
        expect(calc.add(40,3)).to eql(43)
    end
 end

  end
  describe "#mult" do
    it "should multiply two numbers"do
	calc = Calculator.new
        expect(calc.mult(1,3)).to eql(3)
    end
  end

   context "with incorrect params" do
      it "should throw an error" do
         calc = Calculator.new
        expect(calc.mult(40,3)).to eql(45)
    end
   end
end
