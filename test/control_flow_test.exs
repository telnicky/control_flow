defmodule ControlFlowTest do
  use ExUnit.Case
  describe "ControlFlow.upto_cond" do
    test "it returns the correct result up to 20" do
      result = ControlFlow.upto_cond(20)
      assert result == [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16, 17, "fizz", 19, "buzz"]
    end
  end

  describe "ControlFlow.upto_case" do
    test "it returns the correct result up to 20" do
      result = ControlFlow.upto_case(20)
      assert result == [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16, 17, "fizz", 19, "buzz"]
    end
  end

  describe "ControlFlow.upto_func" do
    test "it returns the correct result up to 20" do
      result = ControlFlow.upto_case(20)
      assert result == [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16, 17, "fizz", 19, "buzz"]
    end
  end
end
