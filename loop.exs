#a loop to sum numbers present in a list
defmodule Test do
  def main do
    loop(0,10)
  end
  def loop(_,0), do: nil
  def loop(min,max) do
    if max<min do
      loop(min,0)
    else
      IO.inspect(min)
      loop(min+1,max);
    end
  end
end
Test.main()
