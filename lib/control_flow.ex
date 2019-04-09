defmodule ControlFlow do
  @moduledoc """
  Documentation for ControlFlow.
  """

  ##
  # Public
  #

  def fizzbuzz(number) do
    case ApiClient.fetch(number) do
      {:ok, result} ->
        result
      {:error, error} ->
        error
    end
  end
end
