defmodule Test do
  @moduledoc """
    This is a module that is used to test the when function
  """
  def add_sum(n) when is_integer(n) do
    IO.puts(n+1)
  end
  def add_sum(n) when is_float(n) do
    IO.puts("You entered a float variable")
  end
end
Test.add_sum(1.1)
