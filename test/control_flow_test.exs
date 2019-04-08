defmodule ControlFlowTest do
  use ExUnit.Case

  describe "ControlFlow.fizz" do
    test "it returns `fizz` when number is divisible by 3" do
      result = ControlFlow.fizz(27)
      assert result == "fizz"
    end

    test "it returns the number when the number is not divisible by 3" do
      result = ControlFlow.fizz(2)
      assert result == 2
    end
  end

  describe "ControlFlow.fizzbuzz" do
    test "it returns the correct result up to 20" do
      result = ControlFlow.upto(20)
      assert result == [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16, 17, "fizz", 19, "buzz"]
    end
  end
end
