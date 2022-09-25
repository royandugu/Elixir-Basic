defmodule Tester do
  def main do
   list=[1,2,3,4,5,6,7]
   even_traverser(list)
  end
  def even_traverser([]), do: nil
  def even_traverser([h | t]) do
    reminder=rem(h,2)
    if reminder===0 ,do: IO.puts(h)
    even_traverser(t)
  end
end
Tester.main()

##use enumerators
defmodule Tester2 do
  def main do
    list=[1,2,3,4,5]
    disp_even(list)
  end
  def disp_even(list), do: IO.puts(Enum.any?(list,fn n->rem(n,2)===0 end))
end
Tester2.main()


##Double all the elements of a list
defmodule Tester88 do
  def double_elements do
    list=[1,2,3]
    list2=Enum.map(list, fn n->n*n end)
    IO.inspect(list2)
  end
end
Tester88.double_elements()


##Using list comprehensions
defmodule Tester990 do
  def double_elements do
    list=[1,2,3]
    dbl_list=for n<-list, do: n*n
    IO.inspect(list)
  end
end
Tester990.double_elements()

#Displaying even list using list comprehensions
