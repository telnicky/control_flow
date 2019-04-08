defmodule ControlFlow do
  @moduledoc """
  Documentation for ControlFlow.
  """

  def fizz(number) do
    if rem(number, 3) == 0 do
      "fizz"
    else
      number
    end
  end
end
