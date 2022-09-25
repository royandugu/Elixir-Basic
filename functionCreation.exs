#Shortcut method
defmodule Test do
  def main do
    add_two=fn(x,y)->x+y end
    add_three=&(&1+&2+&3)
    IO.puts(add_two.(1,2))
    IO.puts(add_three.(1,2,3))
  end
end
Test.main()

#function overloading
defmodule Test2 do
  def sum_testing do
    sum=fn
      {x,y}->IO.puts(x+y)
      {x,y,z}->IO.puts(x+y+z)
    end
    sum.({1,2})
  end
end
Test2.sum_testing()
