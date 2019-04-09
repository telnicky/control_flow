defmodule ControlFlowTest do
  use ExUnit.Case

  describe "ControlFlow.fizzbuzz" do
    test "it returns `fizzbuzz` when number is divisible by 3" do
      {:ok, result} = ControlFlow.fizzbuzz(27)
      assert result == "fizz"
    end

    test "it returns the number when the number is not divisible by 3" do
      {:ok, result} = ControlFlow.fizzbuzz(2)
      assert result == 2
    end

    test "it returns an error when the number is less than or equal to 0" do
      {:error, error} = ControlFlow.fizzbuzz(-1)
      assert error ==  "Invalid: number must be positive"
    end
  end

  describe "ControlFlow.fizzbuzz!" do
    test "it returns `fizzbuzz` when number is divisible by 3" do
      result = ControlFlow.fizzbuzz(33)
      assert result == "fizz"
    end

    test "it raises an error when the number is less than or equal to 0" do
      assert_raise ControlFlow.ApiError, fn () ->
       ControlFlow.fizzbuzz!(-1)
      end
    end
  end
end
