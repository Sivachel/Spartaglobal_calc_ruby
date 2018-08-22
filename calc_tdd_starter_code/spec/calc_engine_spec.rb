# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
require 'spec_helper'

describe "Testing the calc engine" do

  before(:all) do
    @calc = CalcEngine.new()
  end

  it "should add two numbers together" do
    expect(@calc.add_two_numbers(1,1)).to eq(2)
  end

  it "shoudld subtract two numbers from each other" do
    expect(@calc.subtract_two_numbers(2,1)).to eq(1)
  end

  it "shoudld multiply two numbers together" do
    expect(@calc.multiply_two_numbers(2,1)).to eq(2)
  end

  it "shoudld divide two numbers" do
    expect(@calc.divide_two_numbers(6,3)).to eq(2)
  end

  it "should workout the power of a number" do
    expect(@calc.power_numbers(2,3)).to eq(8)
  end

  it "should workout the square root of a number" do
    expect(@calc.squareroot_of_number(4)).to eq(2)
  end

  it "should workout the BMI in metric measurement" do
    expect(@calc.metric_BMI(1,1)).to eq(1)
  end

  it "should workout the BMI in imperial measurement" do
    expect(@calc.imperial_BMI(1,1)).to eq(703)
  end

  it "should workout the trip time" do
    expect(@calc.trip_time(60,60)).to eq(1)
  end

  it "should workout the trip cost" do
    expect(@calc.trip_cost(60,60,60,1)).to eq(1)
  end



end
