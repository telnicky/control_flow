defmodule ApiClient do
  def fetch(number) do
    if number <= 0 do
      {:error, "Invalid: number must be positive"}
    else
      {:ok, %{
        number: number,
        fizz: rem(number, 3) == 0,
        buzz: rem(number, 5) == 0,
        fizzbuzz: rem(number, 3) == 0 && rem(number, 5) == 0
      }}
    end
  end
end
