defmodule Test do
  def main do
    13|>printer(14)
  end
  def printer(a,b) do
    IO.puts("a = #{a} and b=#{b}")
  end
end

#The
Test.main()
