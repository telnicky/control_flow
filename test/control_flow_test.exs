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
end
