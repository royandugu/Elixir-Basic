defmodule Test do
  def main do
    IO.puts(sum(2))
  end
  def sum(x \\ 1, y \\ 2) do
    x+y;
  end
end
Test.main()
